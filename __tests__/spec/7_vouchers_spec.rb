require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require 'VoucherifySdk'

RSpec.describe 'Campaigns API', :order => :defined do
  before(:each) do
    @vouchers_api_instance = Config.vouchers_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'get voucher previously created', :order => :first do
    voucher = @vouchers_api_instance.get_voucher(@voucherify_data.get_voucher().code)

    expect(voucher).not_to be_nil
  end

  it 'disable voucher previously created', :order => :second do
    voucher = @vouchers_api_instance.disable_voucher(@voucherify_data.get_voucher().code)

    expect(voucher).not_to be_nil
  end

  it 'enable voucher previously created', :order => :thrird do
    voucher = @vouchers_api_instance.enable_voucher(@voucherify_data.get_voucher().code)

    expect(voucher).not_to be_nil
  end

  it 'update loyalty card balance', :order => :fourth do
    vouchers_balance_update_request_body = VoucherifySdk::VouchersBalanceUpdateRequestBody.new({
        source_id: generate_random_string(),
        amount: 10000,
        reason: "Regular customer"
      })
    
    response = @vouchers_api_instance.update_voucher_balance(@voucherify_data.get_loyalty_card().code, vouchers_balance_update_request_body)

    expect(response).not_to be_nil
  end
end