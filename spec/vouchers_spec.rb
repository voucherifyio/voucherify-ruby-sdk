require 'spec_helper'
require 'rest-client'

describe 'Vouchers API' do

  before(:all) do
    @voucherify = Voucherify::Client.new({
                                             :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                             :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                         })
    $voucher = nil
  end

  it 'should create voucher with code' do
    body = {
        type: 'DISCOUNT_VOUCHER',
        discount: {
            type: 'PERCENT',
            percent_off: 10
        }
    }

    $voucher = @voucherify.vouchers.create('test-code-ruby-sdk', body)

    expect($voucher['code']).to eql('test-code-ruby-sdk')
    expect($voucher['type']).to eql('DISCOUNT_VOUCHER')
    expect($voucher['discount']['type']).to eql('PERCENT')
    expect($voucher['discount']['percent_off']).to eql(10.0)
  end

  it 'should create voucher without specifying a code' do
    body = {
        type: 'DISCOUNT_VOUCHER',
        discount: {
            type: 'PERCENT',
            percent_off: 10
        }
    }

    voucher = @voucherify.vouchers.create(nil, body)

    expect { voucher['code'].wont_be_nil }
    expect(voucher['type']).to eql('DISCOUNT_VOUCHER')
    expect(voucher['discount']['type']).to eql('PERCENT')
    expect(voucher['discount']['percent_off']).to eql(10.0)
  end

  it 'should get voucher by code' do
    voucher = @voucherify.vouchers.get('test-code-ruby-sdk')

    expect { voucher.wont_be_nil }
    expect(voucher['code']).to eql('test-code-ruby-sdk')
  end

  it 'should update voucher' do
    $voucher['category'] = 'New Customers'

    updated = @voucherify.vouchers.update($voucher)

    expect(updated['category']).to eql('New Customers')
  end

  it 'should enable voucher' do
    @voucherify.vouchers.enable('test-code-ruby-sdk')

    voucher = @voucherify.vouchers.get('test-code-ruby-sdk')

    expect(voucher['active']).to eql(true)
  end

  it 'should disable voucher' do
    @voucherify.vouchers.disable('test-code-ruby-sdk')

    voucher = @voucherify.vouchers.get('test-code-ruby-sdk')

    expect(voucher['active']).to eql(false)
  end

  it 'should delete voucher' do
    @voucherify.vouchers.delete('test-code-ruby-sdk', true)

    expect { @voucherify.vouchers.get 'test-code-ruby-sdk' }.to raise_error RestClient::NotFound
  end

  it 'should list vouchers' do
    query = {limit: 10, skip: 20, category: 'API Test'}

    result = @voucherify.vouchers.list query

    expect { result.wont_be_empty }
  end
end