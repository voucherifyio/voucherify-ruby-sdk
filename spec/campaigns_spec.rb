require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Campaigns API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let (:test_campaign_name) { 'ruby-sdk-test-campaign' }

  let (:campaign) { {
      :name => test_campaign_name,
      :type => 'AUTO-UPDATE',
      :expiration_date => DateTime.now.next_day(10).iso8601,
      :vouchers_count => 100,
      :voucher => {
          :type => 'DISCOUNT_VOUCHER',
          :discount => {
              :percent_off => '10.0',
              :type => 'PERCENT'
          },
          :redemption => {
              :quantity => 1
          }
      }
  } }

  let (:voucher) {
    {
        :category => 'test-voucher',
        :metadata => {
            :locale => 'de-en'
        },
        :additional_info => 'ruby-sdk-test-voucher',
        :redemption => {
            :quantity => 1
        }
    }
  }

  let (:voucher_with_code) {
    {
        :code => 'voucher-code',
        :category => 'test-voucher',
        :metadata => {
            :locale => 'de-en'
        },
        :additional_info => 'ruby-sdk-test-voucher',
        :redemption => {
            :quantity => 1
        }
    }
  }

  it 'should create campaign' do
    stub_request(:post, 'https://api.voucherify.io/v1/campaigns')
        .with(body: campaign.to_json, headers: headers)
        .to_return(:status => 200, :body => campaign.to_json, :headers => {})

    voucherify.campaigns.create(campaign)
  end

  it 'should get campaign' do
    stub_request(:get, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => campaign.to_json, :headers => {})

    voucherify.campaigns.get(test_campaign_name)
  end

  it 'should delete campaign' do
    stub_request(:delete, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}?force=false")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.campaigns.delete(test_campaign_name)
  end

  it 'should force delete campaign' do
    stub_request(:delete, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}?force=true")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.campaigns.delete(test_campaign_name, {:force => true})
  end

  it 'should add voucher to campaign' do
    stub_request(:post, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}/vouchers")
        .with(body: voucher.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.campaigns.add_voucher(test_campaign_name, voucher)
  end

  it 'should add voucher with specific code to campaign' do
    stub_request(:post, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}/vouchers/#{voucher_with_code[:code]}")
        .with(body: voucher.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.campaigns.add_voucher(test_campaign_name, voucher_with_code)
  end

  it 'should import vouchers to campaign' do
    stub_request(:post, "https://api.voucherify.io/v1/campaigns/#{test_campaign_name}/import")
        .with(body: '[]', headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.campaigns.import_vouchers(test_campaign_name, [])
  end

end