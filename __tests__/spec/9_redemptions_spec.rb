require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'

RSpec.describe 'Redemptions API', :order => :defined do
  before(:each) do
    @redemptions_api_instance = Config.redemptions_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end
  it 'redeem stacked discounts', :order => :second do
    result = redeem_stacked_discounts(@redemptions_api_instance, @voucherify_data.get_voucher().code)
    expect(result).not_to be_nil
  end
end