require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Redemptions API', :order => :defined do
  before(:each) do
    @redemptions_api_instance = Config.redemptions_api_instance()
    @voucherify_data = VoucherifyData.instance()
    @campaigns_api_instance = Config.campaigns_api_instance()
  end

  it 'redeem stacked discounts (applicable)', :order => :first do
    result = redeem_stacked_discounts(@redemptions_api_instance, @voucherify_data.get_voucher().code)

    snapshot_name = 'redemptions/redeem_stacked_applicable_discounts'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(result).not_to be_nil
    expect(result.redemptions).to be_an(Array)
    expect(result.order).to be_a(VoucherifySdk::OrderCalculated)
#     expect(validate_deep_match(filtered_snapshot, result)).to be true
  end

  it 'redeem stacked discounts (skipped)', :order => :second do
    vouchers = add_vouchers_to_campaign(@campaigns_api_instance, @voucherify_data.get_discount_campaign().id(), 30)
    result = redeem_stacked_discounts(@redemptions_api_instance, vouchers)

    snapshot_name = 'redemptions/redeem_stacked_skipped_discounts'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(result).not_to be_nil
    expect(result.redemptions).to be_an(Array)
    expect(result.order).to be_a(VoucherifySdk::OrderCalculated)
    expect(result.skipped_redeemables).to be_an(Array)
#     expect(validate_deep_match(filtered_snapshot, result)).to be true
  end

  it 'should list redemptions', :order => :third do
    redemptions = list_redemptions(@redemptions_api_instance)

    expect(redemptions).not_to be_nil
  end

end
