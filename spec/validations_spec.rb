require 'spec_helper'
require 'rest-client'

describe 'Validations API' do

  let(:api_url) { 'https://api.voucherify.io/v1' }
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

  let(:promotions_tier_id) {'promo_test_id'}
  let(:tracking_id) {'john.doe@example.com'}
  let(:customer_id) {'cust_test_id'}
  let(:validation_context) {{
      :tracking_id => tracking_id,
      :customer => {
          :id => customer_id
      },
      :order => {
          :amount => 25000
      },
      :metadata => {}
  }}
  let(:validation_response) {{
      :tracking_id => tracking_id,
      :valid => true,
      :promotions => [{
          :id => promotions_tier_id,
          :banner => 'You get 5% off',
          :discount => {
              :type => 'PERCENT',
              :percent_off => 5
          },
          :discount_amount => 1250
      }],
  }}

  it 'should validate voucher' do
    context = {
        tracking_id: 'john@lemon.com',
        order: {
            amount: 1000
        }
    }

    stub_request(:post, "#{api_url}/vouchers/#{voucher_code}/validate")
        .with(body: context.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.validations.validate_voucher('91Ft4U', context)
  end

  it 'should validate voucher' do
    context = {
        tracking_id: 'john@lemon.com',
        order: {
            amount: 1000
        }
    }

    stub_request(:post, "#{api_url}/vouchers/#{voucher_code}/validate")
        .with(body: context.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.validations.create('91Ft4U', context)
  end

  it 'should validate promotion campaign' do
    stub_request(:post, "#{api_url}/promotions/validation")
        .with(body: validation_context.to_json, headers: headers)
        .to_return(:status => 200, :body => validation_response.to_json, :headers => {})

    voucherify.validations.create(validation_context)
  end

end
