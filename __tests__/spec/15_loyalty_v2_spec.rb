# frozen_string_literal: true

require_relative '../lib/config'
require_relative '../lib/customers'
require_relative '../lib/loyalty_v2_fixture'

def card_balance_points(member_body, card_id)
  cards = member_body.cards || []
  entry = cards.find do |item|
    card = item.respond_to?(:card) ? item.card : nil
    card && card.id == card_id
  end
  card = entry && entry.card
  balance = card && card.balance
  points = balance && balance.points
  points.to_i
end

RSpec.describe 'Loyalty v2 API', order: :defined do
  def credentials_configured?
    !ENV['X_APP_ID'].to_s.empty? && !ENV['X_APP_TOKEN'].to_s.empty?
  end

  def resolve_primary_card_id(member_body, card_definition_id)
    cards = member_body.respond_to?(:cards) ? member_body.cards : nil
    cards = [] if cards.nil?
    match = cards.find do |entry|
      card = entry.respond_to?(:card) ? entry.card : entry['card']
      def_id = if card.respond_to?(:card_definition_id)
                 card.card_definition_id
               else
                 card && card['card_definition_id']
               end
      def_id == card_definition_id
    end
    entry = match || cards.first
    card = if entry.nil?
             nil
           elsif entry.respond_to?(:card)
             entry.card
           else
             entry['card']
           end
    id = if card.respond_to?(:id)
           card.id
         else
           card && card['id']
         end
    raise "No loyalty card on member: #{cards.inspect}" if id.nil?

    id
  end

  def ignore_api_error(label)
    yield
  rescue VoucherifySdk::ApiError => e
    return if e.code.to_i == 404

    warn "#{label}: #{e.message}"
  end

  before(:all) do
    skip 'X_APP_ID and X_APP_TOKEN are required' unless credentials_configured?

    @programs_api = Config.lv2_programs_api_instance
    @customers_api = Config.customers_api_instance
    @fixture_ctx = LoyaltyV2Fixture.setup

    customer_body = VoucherifySdk::CustomersCreateRequestBody.new(
      source_id: "lv2_customer_#{@fixture_ctx.suffix}",
      name: 'Loyalty v2 Ruby SDK test'
    )
    @customer = @customers_api.create_customer(
      customers_create_request_body: customer_body
    )

    member_body = VoucherifySdk::V2LoyaltiesProgramsMembersCreateRequestBody.new(
      customer_identification: {
        type: 'customer_id',
        customer_id: @customer.id,
        customer_source_id: nil
      }
    )
    @member = @programs_api.create_program_member(
      @fixture_ctx.program_id,
      v2_loyalties_programs_members_create_request_body: member_body
    )
    @primary_card_id = resolve_primary_card_id(@member, @fixture_ctx.card_definition_id)
  end

  # Program teardown is deferred to prompt 06 so later examples can share the fixture.
  after(:all) do
    next if @fixture_ctx.nil?

    if @fixture_ctx.program_id && @member&.id
      ignore_api_error('deactivate_program_member') do
        @programs_api.deactivate_program_member(@fixture_ctx.program_id, @member.id)
      end
      ignore_api_error('delete_program_member') do
        @programs_api.delete_program_member(@fixture_ctx.program_id, @member.id)
      end
    end

    if @customer&.id
      ignore_api_error('delete_customer') do
        delete_customer_permanently(@customers_api, @customer.id)
      end
    end
  end

  it 'sets up an activated program with card definition, earning rule, and reward', order: 1 do
    expect(@fixture_ctx.program_id).to be_a(String)
    expect(@fixture_ctx.card_definition_id).to match(/\Alcdef_/)
    expect(@fixture_ctx.earning_rule_id).to match(/\Alern_/)
    expect(@fixture_ctx.reward_id).to match(/\Alrew_/)
  end

  it 'creates, gets, lists, activates, and deactivates a program member via SDK', order: 2 do
    expect(@member).not_to be_nil
    expect(@member.id).to be_a(String)
    expect(@member.customer_id).to eq(@customer.id)
    expect(@member.cards).to be_a(Array)
    expect(@member.cards.length).to be > 0

    fetched = @programs_api.get_program_member(@fixture_ctx.program_id, @member.id)
    expect(fetched.id).to eq(@member.id)

    listed = @programs_api.list_program_members(@fixture_ctx.program_id)
    rows = listed.data || listed.members || []
    ids = rows.map(&:id)
    expect(ids).to include(@member.id)

    membership = @programs_api.get_program_membership(
      @fixture_ctx.program_id,
      @customer.id
    )
    expect(membership).not_to be_nil

    if %w[INACTIVE DRAFT].include?(@member.status)
      activated = @programs_api.activate_program_member(
        @fixture_ctx.program_id,
        @member.id
      )
      expect(activated.status).to eq('ACTIVE')
      @member = activated
    end

    deactivated = @programs_api.deactivate_program_member(
      @fixture_ctx.program_id,
      @member.id
    )
    expect(deactivated.status).not_to eq('ACTIVE')

    reactivated = @programs_api.activate_program_member(
      @fixture_ctx.program_id,
      @member.id
    )
    expect(reactivated.status).to eq('ACTIVE')
    @member = @programs_api.get_program_member(@fixture_ctx.program_id, @member.id)
    expect(@primary_card_id).to match(/\Alcrd_/)
    expect(resolve_primary_card_id(@member, @fixture_ctx.card_definition_id)).to eq(@primary_card_id)
  end

  it 'adjusts card points and lists card transactions via SDK', order: 3 do
    adjusted = @programs_api.adjust_card_points(
      @fixture_ctx.program_id,
      @member.id,
      @primary_card_id,
      v2_loyalties_programs_members_cards_points_adjust_request_body:
        VoucherifySdk::V2LoyaltiesProgramsMembersCardsPointsAdjustRequestBody.new(
          points: 100,
          reason: 'ruby sdk loyalty v2 e2e'
        )
    )
    expect(adjusted).not_to be_nil

    # ADMIN_CREDIT is async; wait until balance is visible before spend ops.
    points = 0
    10.times do
      sleep 1
      @member = @programs_api.get_program_member(@fixture_ctx.program_id, @member.id)
      points = card_balance_points(@member, @primary_card_id)
      break if points.positive?
    end
    expect(points).to be > 0

    transactions = @programs_api.list_card_transactions(
      @fixture_ctx.program_id,
      @member.id,
      @primary_card_id
    )
    expect(transactions).not_to be_nil
    rows = transactions.data || []
    expect(rows.length).to be > 0
  end

  it 'creates a member order payment dry-run via SDK', order: 4 do
    orders_api = Config.order_api_instance
    order = orders_api.create_order(
      orders_create_request_body: VoucherifySdk::OrdersCreateRequestBody.new(
        amount: 2500,
        source_id: "lv2_order_#{@fixture_ctx.suffix}",
        customer: { id: @customer.id }
      )
    )
    expect(order.id).to match(/\Aord_/)

    payment = @programs_api.create_member_order_payment(
      @fixture_ctx.program_id,
      @member.id,
      v2_loyalties_programs_members_orders_payments_create_request_body:
        VoucherifySdk::V2LoyaltiesProgramsMembersOrdersPaymentsCreateRequestBody.new(
          card_id: @primary_card_id,
          order: { id: order.id, source_id: nil },
          payment_limit: { type: 'CARD_BALANCE' },
          mode: 'DRY_RUN'
        )
    )
    expect(payment).not_to be_nil

    listed = @programs_api.list_member_order_payments(
      @fixture_ctx.program_id,
      @member.id
    )
    expect(listed).not_to be_nil
  end

  it 'purchases a member reward via SDK', order: 5 do
    dry_run = @programs_api.purchase_member_reward(
      @fixture_ctx.program_id,
      @member.id,
      v2_loyalties_programs_members_rewards_purchases_create_request_body:
        VoucherifySdk::V2LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody.new(
          reward_id: @fixture_ctx.reward_id,
          mode: 'DRY_RUN'
        )
    )
    expect(dry_run).not_to be_nil

    purchase = @programs_api.purchase_member_reward(
      @fixture_ctx.program_id,
      @member.id,
      v2_loyalties_programs_members_rewards_purchases_create_request_body:
        VoucherifySdk::V2LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody.new(
          reward_id: @fixture_ctx.reward_id,
          mode: 'TRANSACTION'
        )
    )
    expect(purchase).not_to be_nil

    reward_transaction_id =
      (purchase.respond_to?(:transaction) && purchase.transaction && purchase.transaction.id) ||
      purchase.id
    expect(reward_transaction_id).to be_a(String)

    approved_row = nil
    15.times do
      sleep 1
      listed = @programs_api.list_member_reward_purchases(
        @fixture_ctx.program_id,
        @member.id
      )
      rows = listed.data || []
      expect(rows.length).to be > 0
      match = rows.find { |row| row.id == reward_transaction_id } || rows.first
      status = match.status
      if status == 'APPROVED'
        approved_row = match
        break
      end
    end
    expect(approved_row).not_to be_nil

    refund_id = approved_row.id || reward_transaction_id
    refunded = @programs_api.refund_reward_purchase(
      @fixture_ctx.program_id,
      refund_id,
      v2_loyalties_programs_rewards_purchases_refund_request_body:
        VoucherifySdk::V2LoyaltiesProgramsRewardsPurchasesRefundRequestBody.new(
          policies: { refund: 'ALLOW', stock: 'DEFAULT' }
        )
    )
    expect(refunded).not_to be_nil
  end

  it 'skips pending-point activate/cancel when the fixture has no pending bucket', order: 6 do
    pending = @programs_api.list_card_pending_points(
      @fixture_ctx.program_id,
      @member.id,
      @primary_card_id
    )
    rows = pending.data || []
    skip 'fixture uses IMMEDIATE pending points; no pending bucket to activate/cancel' if rows.empty?

    bucket_id = rows.first.id
    activated = @programs_api.activate_card_pending_points_bucket(
      @fixture_ctx.program_id,
      @member.id,
      @primary_card_id,
      bucket_id
    )
    expect(activated).not_to be_nil
  end
end
