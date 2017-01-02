require 'spec_helper'
require 'rest-client'

describe 'Validations API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }
  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let (:voucher_code) { '91Ft4U' }

  it 'should validate voucher' do
    context = {
        tracking_id: 'john@lemon.com',
        order: {
            amount: 1000
        }
    }

    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{voucher_code}/validate")
        .with(body: context.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.validations.validate_voucher('91Ft4U', context)
  end

end
