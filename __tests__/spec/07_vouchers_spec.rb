require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require 'VoucherifySdk'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Vouchers API', :order => :defined do
  before(:each) do
    @vouchers_api_instance = Config.vouchers_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'get voucher previously created', :order => :first do
    voucher = @vouchers_api_instance.get_voucher(@voucherify_data.get_voucher().code)

    snapshot_name = 'vouchers/get_previously_created_voucher'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(voucher).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, voucher)).to be true
  end

  it 'disable voucher previously created', :order => :second do
    voucher = @vouchers_api_instance.disable_voucher(@voucherify_data.get_voucher().code)

    snapshot_name = 'vouchers/disabled_previously_created_voucher'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(voucher).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, voucher)).to be true
  end

  it 'enable voucher previously created', :order => :thrird do
    voucher = @vouchers_api_instance.enable_voucher(@voucherify_data.get_voucher().code)

    snapshot_name = 'vouchers/enabled_previously_created_voucher'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(voucher).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, voucher)).to be true
  end

  it 'update loyalty card balance', :order => :fourth do
    vouchers_balance_update_request_body = VoucherifySdk::VouchersBalanceUpdateRequestBody.new({
        source_id: generate_random_string(),
        amount: 10000,
        reason: "Regular customer"
      })

    response = @vouchers_api_instance.update_voucher_balance(@voucherify_data.get_loyalty_card().code, vouchers_balance_update_request_body)

    snapshot_name = 'vouchers/updated_loyalty_card_balance'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(response).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, response)).to be true
  end
end
