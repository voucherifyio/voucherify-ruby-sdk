require_relative '../lib/campaigns.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Campaigns API', :order => :defined do
  before(:each) do
    @campaigns_api_instance = Config.campaigns_api_instance()
    @validation_rules_api_instance = Config.validation_rules_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  $created_validation_rule = nil
  $created_discount_campaign = nil
  $created_promotion_campaign = nil
  $created_loyalty_campaign = nil
  $created_validation_rule_applicable_to = nil

  it 'create a validation rule with applicable_to', :order => :first do
    validation_rule = create_validation_rule_applicable_to(@validation_rules_api_instance, @voucherify_data.get_product.id)

    snapshot_name = 'campaigns/created_validation_rule_applicable_to'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(validation_rule).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, validation_rule)).to be true

    $created_validation_rule_applicable_to = validation_rule
    @voucherify_data.set_validation_rule(validation_rule)
  end

  it 'create a discount campaign with applicable_to validation rule', :order => :second do
    created_discount_campaign = create_discount_campaign(@campaigns_api_instance, $created_validation_rule_applicable_to.id)

    snapshot_name = 'campaigns/created_discount_campaign'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(created_discount_campaign).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_discount_campaign)).to be true

    $created_discount_campaign = created_discount_campaign
    @voucherify_data.set_discount_campaign(created_discount_campaign)
  end

  it 'create a promotion campaign', :order => :thrid do
    created_promotion_campaign = create_promotion_campaign(@campaigns_api_instance)

    snapshot_name = 'campaigns/created_promotion_campaign'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(created_promotion_campaign).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_promotion_campaign)).to be true

    $created_promotion_campaign = created_promotion_campaign
  end

  it 'create a loyalty campaign', :order => :fourth do
    created_loyalty_campaign = create_loyalty_campaign(@campaigns_api_instance)

    snapshot_name = 'campaigns/created_loyalty_campaign'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(created_loyalty_campaign).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_loyalty_campaign)).to be true

    $created_loyalty_campaign = created_loyalty_campaign
    @voucherify_data.set_loyalty_campaign(created_loyalty_campaign)
  end

  it 'delete the promotion campaign', :order => :fifth do
    deleted_promotion_campaign = delete_campaign(@campaigns_api_instance, $created_promotion_campaign.id)

    expect(deleted_promotion_campaign).not_to be_nil
  end

  it 'add voucher to campaign', :order => :sixth do
    created_voucher = @campaigns_api_instance.add_vouchers_to_campaign($created_discount_campaign.id, {
        vouchers_count: 1,
    })

    snapshot_name = 'campaigns/added_voucher_to_campaign'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    @voucherify_data.set_voucher(created_voucher)

    expect(created_voucher).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_voucher)).to be true
  end

  it 'create a bundle of vouchers', :order => :seventh do
    async_action = @campaigns_api_instance.add_vouchers_to_campaign($created_discount_campaign.id, {
        vouchers_count: 5,
    })

    expect(async_action).not_to be_nil
  end

  it 'add loyalty card to campaign', :order => :eighth do
    created_loyalty_card = @campaigns_api_instance.add_vouchers_to_campaign($created_loyalty_campaign.id, {
        vouchers_count: 1,
    })

    snapshot_name = 'campaigns/added_loyalty_card_to_campaign'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    @voucherify_data.set_loyalty_card(created_loyalty_card)
    expect(created_loyalty_card).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_loyalty_card)).to be true
  end

  it 'create a campaign with validation rule and add voucher', :order => :ninth do
    validation_rule = create_validation_rule_more_than(@validation_rules_api_instance, @voucherify_data.get_product.id)
    campaign = create_discount_campaign(@campaigns_api_instance, validation_rule.id)

    snapshot_name_validation_rule = 'campaigns/created_validation_rule_more_than'
    snapshot_name_campaign = 'campaigns/created_discount_campaign_with_val_rule'
    filtered_campaign_snapshot = get_snapshot_without_uniq_keys(snapshot_name_campaign)
    filtered_validation_rule_snapshot = get_snapshot_without_uniq_keys(snapshot_name_validation_rule)

    expect(validation_rule).not_to be_nil
    expect(campaign).not_to be_nil
    expect(validate_deep_match(filtered_campaign_snapshot, campaign)).to be true
    expect(validate_deep_match(filtered_validation_rule_snapshot, validation_rule)).to be true

    voucher = @campaigns_api_instance.add_vouchers_to_campaign(campaign.id, {
        vouchers_count: 1,
    })

    @voucherify_data.set_voucher_with_more_than_validation_rule(voucher)
  end
end
