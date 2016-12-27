require 'spec_helper'
require 'rest-client'

describe 'Redemptions API' do

  before(:all) do
    @voucherify = Voucherify::Client.new({
                                             :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                             :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                         })

    voucher = {
        type: 'DISCOUNT_VOUCHER',
        discount: {
            type: 'PERCENT',
            percent_off: 10
        }
    }

    @voucher = @voucherify.vouchers.create(nil, voucher)
    $redemption = nil
  end

  it 'should redeem voucher' do
    $redemption = @voucherify.redemptions.redeem(@voucher['code'])

    expect($redemption['result']).to eql ('SUCCESS')
  end

  it 'should provide a list of redemptions' do
    query = {
        limit: 10,
        result: 'SUCCESS'
    }
    result = @voucherify.redemptions.list(query)

    expect { result.wont_be_nil }
    expect { result['redemptions'].wont_be_empty }
  end

  it 'should get redemptions for voucher' do
    result = @voucherify.redemptions.get_for_voucher(@voucher['code'])

    expect { result.wont_be_nil }
  end

  it 'should rollback redemption' do
    result = @voucherify.redemptions.rollback($redemption['id'])

    expect { result.wont_be_nil }
    expect(result['result']).to eql ('SUCCESS')
  end

  after(:all) do
    @voucherify.vouchers.delete(@voucher['code'], true)
  end
end