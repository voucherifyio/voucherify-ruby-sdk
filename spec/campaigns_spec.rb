require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Campaigns API' do

  let (:voucherify) { Voucherify::Client.new({
                                                 :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                                 :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                             }) }

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

  let (:vouchers) { [{
                         :code => 'import-code-1',
                         :redemption => {
                             :quantity => 1
                         },
                         :metadata => {
                             :unit => 'EUR'
                         },
                         :additional_info => 'import-code-1-sc1'
                     }, {
                         :code => 'import-code-2',
                         :redemption => {
                             :quantity => 2
                         },
                         :metadata => {
                             :unit => 'EUR'
                         },
                         :additional_info => 'import-code-2-sc2'
                     }] }

  it 'should create campaign' do
    result = voucherify.campaigns.create(campaign)

    expect(result['name']).to eql(campaign[:name])
    sleep(5)
  end

  it 'should get campaign' do
    expect(voucherify.campaigns.get(test_campaign_name)['name']).to eql(test_campaign_name)
  end

  it 'should add voucher to campaign' do
    payload = {
        :category => 'test-voucher',
        :metadata => {
            :locale => 'de-en'
        },
        :additional_info => 'ruby-sdk-test-voucher',
        :redemption => {
            :quantity => 1
        }
    }

    result = voucherify.campaigns.add_voucher(test_campaign_name, payload)

    expect(result['campaign']).to eql(test_campaign_name)
  end

  it 'should add voucher with specific code to campaign' do
    payload = {
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

    result = voucherify.campaigns.add_voucher(test_campaign_name, payload)

    expect(result['campaign']).to eql(test_campaign_name)
    expect(result['code']).to eql('voucher-code')
  end

  it 'should import vouchers to campaign' do
    voucherify.campaigns.import_vouchers(test_campaign_name, vouchers)

    expect(voucherify.vouchers.get(vouchers[0][:code])['campaign']).to eql('ruby-sdk-test-campaign')
    expect(voucherify.vouchers.get(vouchers[1][:code])['campaign']).to eql('ruby-sdk-test-campaign')
  end

  it 'should delete campaign' do
    voucherify.campaigns.delete(test_campaign_name, {:force => true})

    expect { voucherify.campaigns.get test_campaign_name }.to raise_error RestClient::NotFound
  end
end