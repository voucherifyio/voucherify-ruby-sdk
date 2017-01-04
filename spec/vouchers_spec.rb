require 'spec_helper'
require 'rest-client'

describe 'Vouchers API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }
  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:voucher_code) { 'ruby sdk-test-code' }

  it 'should create voucher with code' do
    body = {
        :type => 'DISCOUNT_VOUCHER',
        :discount => {
            :type => 'PERCENT',
            :percent_off => 10
        }
    }

    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{voucher_code}")
        .with(body: body.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})


    voucherify.vouchers.create(voucher_code, body)
  end

  it 'should create voucher without specifying a code' do
    body = {
        :type => 'DISCOUNT_VOUCHER',
        :discount => {
            :type => 'PERCENT',
            :percent_off => 10
        }
    }

    stub_request(:post, 'https://api.voucherify.io/v1/vouchers')
        .with(body: body.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.vouchers.create(nil, body)
  end

  it 'should get voucher by code' do
    stub_request(:get, "https://api.voucherify.io/v1/vouchers/#{voucher_code}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '{}', :headers => {})

    voucherify.vouchers.get(voucher_code)
  end

  it 'should update voucher' do
    update = {
        :code => voucher_code,
        :type => 'DISCOUNT_VOUCHER',
        :discount => {
            :type => 'PERCENT',
            :percent_off => 20
        }
    }

    stub_request(:put, "https://api.voucherify.io/v1/vouchers/#{voucher_code}")
        .with(body: update.to_json, headers: headers)
        .to_return(:status => 200, :body => '{}', :headers => {})

    voucherify.vouchers.update(update)
  end

  it 'should enable voucher' do
    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{voucher_code}/enable")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.vouchers.enable(voucher_code)
  end

  it 'should disable voucher' do
    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{voucher_code}/disable")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.vouchers.disable(voucher_code)
  end

  it 'should delete voucher' do
    stub_request(:delete, "https://api.voucherify.io/v1/vouchers/#{voucher_code}?force=false")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.vouchers.delete(voucher_code)
  end

  it 'should force delete voucher' do
    stub_request(:delete, "https://api.voucherify.io/v1/vouchers/#{voucher_code}?force=true")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.vouchers.delete(voucher_code, {:force => true})
  end

  it 'should list vouchers' do
    query = {
        :limit => 10,
        :skip => 20,
        :category => 'API Test'
    }

    stub_request(:get, "https://api.voucherify.io/v1/vouchers?limit=#{query[:limit]}&skip=#{query[:skip]}&category=#{query[:category]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.vouchers.list query
  end

  it 'should import vouchers' do
    vouchers = [
        {
            :code => 'code_1',
            :category => 'new_category',
            :type => 'DISCOUNT_VOUCHER',
            :discount => {
                :amount_off => 3000,
                :type => 'AMOUNT'
            }
        }, {
            :code => 'code_2',
            :category => 'new_category',
            :type => 'DISCOUNT_VOUCHER',
            :discount => {
                :amount_off => 3000,
                :type => 'AMOUNT'
            }
        }
    ]

    stub_request(:post, 'https://api.voucherify.io/v1/vouchers/import')
        .with(body: vouchers.to_json, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.vouchers.import vouchers
  end

end
