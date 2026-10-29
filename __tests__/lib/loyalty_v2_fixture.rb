# frozen_string_literal: true

require_relative 'loyalty_v2_http'

# HTTP-only setup and teardown for Loyalty v2 e2e tests.
module LoyaltyV2Fixture
  Context = Struct.new(
    :suffix,
    :program_id,
    :card_definition_id,
    :reward_card_definition_id,
    :earning_rule_id,
    :reward_id,
    :program_name,
    keyword_init: true
  )

  module_function

  def unique_suffix
    "#{Time.now.to_i.to_s(36)}_#{rand(1_000_000)}"
  end

  def build_card_definition_body(name, enable_pay_with_points: false)
    {
      name: name,
      type: 'INDIVIDUAL',
      status: 'DRAFT',
      points_expiration: { type: 'NO_EXPIRATION' },
      pending_points: { type: 'IMMEDIATE' },
      spending_limits: {
        global: { type: 'NO_LIMIT', limits: nil },
        transactions: { type: 'NO_LIMIT', limits: nil }
      },
      # Order payments require EXCHANGE_RATIO; default is NO_PAYMENTS (423).
      pay_with_points: if enable_pay_with_points
                         {
                           type: 'EXCHANGE_RATIO',
                           exchange_ratio: { formula: 1 }
                         }
                       else
                         { type: 'NO_PAYMENTS' }
                       end
    }
  end

  def setup
    suffix = unique_suffix
    program_name = "ruby_sdk_lv2_program_#{suffix}"
    card_name = "ruby_sdk_lv2_card_#{suffix}"
    earning_rule_name = "ruby_sdk_lv2_earn_#{suffix}"
    reward_name = "ruby_sdk_lv2_reward_#{suffix}"

    program = LoyaltyV2Http.create_program(name: program_name)
    program_id = program && program['id']
    raise "create_program returned no id: #{program.inspect}" if program_id.nil?

    card_definition = LoyaltyV2Http.create_card_definition(
      build_card_definition_body(card_name, enable_pay_with_points: true)
    )
    card_definition_id = card_definition && card_definition['id']
    raise "create_card_definition returned no id: #{card_definition.inspect}" if card_definition_id.nil?

    LoyaltyV2Http.activate_card_definition(card_definition_id)

    # Reward spend source and credit target must be different card definitions.
    reward_card_definition = LoyaltyV2Http.create_card_definition(
      build_card_definition_body("ruby_sdk_lv2_reward_card_#{suffix}")
    )
    reward_card_definition_id = reward_card_definition && reward_card_definition['id']
    if reward_card_definition_id.nil?
      raise "create_card_definition (reward target) returned no id: #{reward_card_definition.inspect}"
    end

    LoyaltyV2Http.activate_card_definition(reward_card_definition_id)

    earning_rule = LoyaltyV2Http.create_earning_rule(
      name: earning_rule_name,
      status: 'DRAFT',
      trigger: {
        event: 'customer.order.paid'
      },
      earnings: [
        {
          effects: [
            {
              type: 'POINTS',
              points: {
                value: 100,
                card_definition_id: card_definition_id
              }
            }
          ]
        }
      ]
    )
    earning_rule_id = earning_rule && earning_rule['id']
    raise "create_earning_rule returned no id: #{earning_rule.inspect}" if earning_rule_id.nil?

    LoyaltyV2Http.activate_earning_rule(earning_rule_id)

    reward = LoyaltyV2Http.create_reward(
      name: reward_name,
      type: 'DIGITAL',
      status: 'DRAFT',
      material: nil,
      digital: {
        type: 'LOYALTY_CARD_POINTS',
        discount_coupons: nil,
        gift_vouchers: nil,
        loyalty_card_points: {
          points: 5,
          card_definition_id: reward_card_definition_id
        }
      },
      costs: [
        {
          spending: [
            {
              points: 10,
              card_definition_id: card_definition_id
            }
          ]
        }
      ]
    )
    reward_id = reward && reward['id']
    raise "create_reward returned no id: #{reward.inspect}" if reward_id.nil?

    LoyaltyV2Http.activate_reward(reward_id)

    LoyaltyV2Http.batch_assign_card_definitions(
      program_id,
      assign: [{ id: card_definition_id }, { id: reward_card_definition_id }]
    )
    LoyaltyV2Http.batch_assign_earning_rules(
      program_id,
      assign: [{ id: earning_rule_id }]
    )
    LoyaltyV2Http.batch_assign_rewards(
      program_id,
      assign: [{ id: reward_id, stock: { type: 'UNLIMITED' } }]
    )

    LoyaltyV2Http.activate_program(program_id)

    Context.new(
      suffix: suffix,
      program_id: program_id,
      card_definition_id: card_definition_id,
      reward_card_definition_id: reward_card_definition_id,
      earning_rule_id: earning_rule_id,
      reward_id: reward_id,
      program_name: program_name
    )
  end

  # Cleanup matrix (what the API allows):
  # - Program: deactivate → delete (delete soft-removes assignments).
  # - Earning rule / reward: deactivate → delete.
  # - Card definitions: delete after program + reward are gone.
  #   Drafting while still assigned to a non-draft program/reward returns 423.
  def teardown(ctx)
    return if ctx.nil?

    ignore('deactivate_program') { LoyaltyV2Http.deactivate_program(ctx.program_id) } if ctx.program_id
    ignore('delete_program') { LoyaltyV2Http.delete_program(ctx.program_id) } if ctx.program_id

    if ctx.earning_rule_id
      ignore('deactivate_earning_rule') { LoyaltyV2Http.deactivate_earning_rule(ctx.earning_rule_id) }
    end
    if ctx.reward_id
      ignore('deactivate_reward') { LoyaltyV2Http.deactivate_reward(ctx.reward_id) }
    end

    sleep 0.5

    if ctx.earning_rule_id
      ignore('delete_earning_rule') { LoyaltyV2Http.delete_earning_rule(ctx.earning_rule_id) }
    end
    if ctx.reward_id
      ignore('delete_reward') { LoyaltyV2Http.delete_reward(ctx.reward_id) }
    end
    [ctx.card_definition_id, ctx.reward_card_definition_id].each do |card_id|
      next if card_id.nil?

      ignore("delete_card_definition #{card_id}") { LoyaltyV2Http.delete_card_definition(card_id) }
    end
  end

  def ignore(label)
    yield
  rescue LoyaltyV2Http::Error => e
    return if e.status == 404

    warn "Loyalty v2 teardown #{label}: #{e.message}"
  end
  private_class_method :ignore
end
