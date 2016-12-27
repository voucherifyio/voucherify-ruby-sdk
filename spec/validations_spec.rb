require 'spec_helper'
require 'rest-client'

describe 'Validations API' do

  voucherify = Voucherify::Client.new({
                                          :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                          :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                      })

  $created_customer = nil

  it 'should validate voucher' do
    context = {
        tracking_id: 'john@lemon.com',
        order: {
            amount: 1000
        }
    }

    validation_result = voucherify.validations.validate_voucher('91Ft4U', context)
    expect(validation_result['code']).to eql '91Ft4U'
  end

end