require 'spec_helper'
require 'rest-client'

describe 'Redemptions API' do

  before(:all) do
    @voucherify = Voucherify::Client.new({
                                             :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                             :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                         })

    discount = {
        :type => 'DISCOUNT_VOUCHER',
        :discount => {
            :type => 'PERCENT',
            :percent_off => 10
        }
    }

    gift = {
        :type => 'GIFT_VOUCHER',
        :gift => {
            :amount => 1000
        }
    }

    @discount_voucher = @voucherify.vouchers.create(nil, discount)
    @gift_voucher = @voucherify.vouchers.create(nil, gift)
    @redemptions = []
  end

  it 'should redeem voucher' do
    redemption = @voucherify.redemptions.redeem(@discount_voucher['code'])
    @redemptions.push redemption

    expect(redemption['result']).to eql ('SUCCESS')
  end

  it 'should redeem voucher with params' do
    params = {
        :customer => {
            :source_id => 'john@email.com'
        }
    }

    redemption = @voucherify.redemptions.redeem(@discount_voucher['code'], params)
    @redemptions.push redemption

    expect(redemption['result']).to eql ('SUCCESS')
  end

  it 'should redeem gift voucher' do
    params = {
        :order => {
            :amount => 100
        }
    }

    redemption = @voucherify.redemptions.redeem(@gift_voucher['code'], params)
    @redemptions.push redemption

    expect(redemption['result']).to eql ('SUCCESS')
    expect(redemption['voucher']['gift']['amount']).to eql (1000)
    expect(redemption['voucher']['gift']['balance']).to eql (900)
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
    result = @voucherify.redemptions.get_for_voucher(@discount_voucher['code'])

    expect { result.wont_be_nil }
  end

  it 'should rollback redemption' do
    params = {
        :reason => 'mistake',
        :customer => {
            :source_id => 'john@email.com'
        }
    }

    result = @voucherify.redemptions.rollback(@redemptions[0]['id'], params)

    expect { result.wont_be_nil }
    expect(result['result']).to eql ('SUCCESS')
  end

  it 'should rollback redemption without a reason' do
    params = {
        :customer => {
            :source_id => 'john@email.com'
        }
    }

    result = @voucherify.redemptions.rollback(@redemptions[1]['id'], params)

    expect { result.wont_be_nil }
    expect(result['result']).to eql ('SUCCESS')
  end

  it 'should rollback gift voucher redemption' do
    params = {
        :customer => {
            :source_id => 'john@email.com'
        }
    }

    result = @voucherify.redemptions.rollback(@redemptions[2]['id'], params)

    expect { result.wont_be_nil }
    expect(result['result']).to eql ('SUCCESS')
    expect(result['voucher']['gift']['amount']).to eql (1000)
    expect(result['voucher']['gift']['balance']).to eql (1000)
  end

  after(:all) do
    @voucherify.vouchers.delete(@discount_voucher['code'], {:force => true})
    @voucherify.vouchers.delete(@gift_voucher['code'], {:force => true})
  end
end