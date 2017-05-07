require 'spec_helper'
require 'rest-client'

describe 'Validation Rules API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:validation_rule) { {
      :id => 'id',
      :voucher_code => 'test_val_rules',
      :orders => {
        :total_amount => {
          :more_than => [10000]
        }
      }
  } }

  it 'should create validation rule' do
    stub_request(:post, 'https://api.voucherify.io/v1/validation-rules')
        .with(body: validation_rule.to_json, headers: headers)
        .to_return(:status => 200, :body => validation_rule.to_json, :headers => {})

    voucherify.validation_rules.create(validation_rule)
  end

  it 'should get validation rule by id' do
    stub_request(:get, "https://api.voucherify.io/v1/validation-rules/#{validation_rule[:id]}")
        .to_return(:status => 200, :body => validation_rule.to_json, :headers => {})

    voucherify.validation_rules.get validation_rule[:id]
  end

  it 'should update validation rule' do
    stub_request(:put, "https://api.voucherify.io/v1/validation-rules/#{validation_rule[:id]}")
        .to_return(:status => 200, :body => validation_rule.to_json, :headers => {})
    validation_rule[:junction] = 'AND'

    voucherify.validation_rules.update validation_rule
  end

  it 'should delete validation rule by id' do
    stub_request(:delete, "https://api.voucherify.io/v1/validation-rules/#{validation_rule[:id]}")
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.validation_rules.delete validation_rule[:id]
  end
end