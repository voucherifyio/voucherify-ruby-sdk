require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Promotions API' do

  let(:api_url) {'https://api.voucherify.io/v1'}

  let(:application_id) {'application_id'}
  let(:client_secret_key) {'client_secret_key'}

  let(:voucherify) {Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key})}
  let(:headers) {{
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  }}

  let(:promotions_tier_id) {'promo_test_id'}
  let(:promotions_tier) {{
      :name => 'BMCF 2017 - $10 off for orders above $100',
      :banner => 'Congratulations, you get $10 off.',
      :condition => {
          :orders => {
              :total_amount => {
                  '$more_than' => [10000]
              }
          }
      },
      :action => {
          :discount => {
              :type => 'AMOUNT',
              :amount_off => 1000
          }
      }
  }}
  let(:promotions_tiers) {{
      :object => 'list',
      :total => 2,
      :data_ref => 'tiers',
      :tiers => [
          promotions_tier,
          promotions_tier
      ]
  }}

  let(:promotion_campaign_id) {'camp_test_id'}
  let(:promotion_campaign_name) {'ruby-sdk-test-promotion-campaign'}
  let(:promotion_campaign) {{
      :name => promotion_campaign_name,
      :campaign_type => 'PROMOTION',
      :start_date => DateTime.now.iso8601,
      :expiration_date => DateTime.now.next_day(10).iso8601,
      :promotion => {
          :tiers => [promotions_tier]
      }
  }}

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

  let(:redemption_context) {{
      :customer => {
          :id => customer_id
      },
      :order => {
          :amount => 25000
      },
      :metadata => {}
  }}
  let(:redemption_response) {{
      :id => 'r_test_id',
      :object => 'redemption',
      :date => '2017-11-09T13:15:53Z',
      :customer_id => customer_id,
      :tracking_id => tracking_id,
      :order => {
          :object => 'order',
          :id => 'ord_test_id',
          :source_id => nil,
          :amount => 25000,
          :discount_amount => 1000,
          :created_at => '2017-11-09T12:15:53Z',
          :updated_at => nil,
          :items => nil,
          :customer => {
              :id => 'cust_test_id',
              :object => 'customer'
          },
          :referrer => nil,
          :status => 'CREATED',
          :metadata => nil
      },
      :result => 'SUCCESS',
      :promotion_tier => promotions_tier
  }}

  it 'should create promotion campaign' do
    stub_request(:post, "#{api_url}/campaigns")
        .with(body: promotion_campaign.to_json, headers: headers)
        .to_return(:status => 200, :body => promotion_campaign.to_json, :headers => {})

    voucherify.promotions.create(promotion_campaign)
  end

  it 'should validate promotion campaign' do
    stub_request(:post, "#{api_url}/promotions/validation")
        .with(body: validation_context.to_json, headers: headers)
        .to_return(:status => 200, :body => validation_response.to_json, :headers => {})

    voucherify.promotions.validate(validation_context)
  end

  it 'should redeem promotion campaign' do
    stub_request(:post, "#{api_url}/promotions/tiers/#{promotions_tier_id}/redemption")
        .with(body: redemption_context.to_json, headers: headers)
        .to_return(:status => 200, :body => redemption_response.to_json, :headers => {})

    voucherify.promotions.tiers.redeem(promotions_tier_id, redemption_context)
  end

  it 'should list promotion\'s tiers' do
    stub_request(:get, "#{api_url}/promotions/#{ERB::Util.url_encode(promotion_campaign_id)}/tiers")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => promotions_tiers.to_json, :headers => {})

    voucherify.promotions.tiers.list(promotion_campaign_id)
  end

  it 'should create promotion\'s tier' do
    stub_request(:post, "#{api_url}/promotions/#{ERB::Util.url_encode(promotion_campaign_id)}/tiers")
        .with(body: promotions_tier, headers: headers)
        .to_return(:status => 200, :body => promotions_tier.to_json, :headers => {})

    voucherify.promotions.tiers.create(promotion_campaign_id, promotions_tier)
  end

  it 'should update promotion\'s tier' do
    promotions_tier_w_id = promotions_tier.merge({id: promotions_tier_id})

    stub_request(:put, "#{api_url}/promotions/tiers/#{ERB::Util.url_encode(promotions_tier_id)}")
        .with(body: promotions_tier_w_id, headers: headers)
        .to_return(:status => 200, :body => promotions_tier_w_id.to_json, :headers => {})

    voucherify.promotions.tiers.update(promotions_tier_w_id)
  end

  it 'should delete promotion\'s tier' do
    stub_request(:delete, "#{api_url}/promotions/tiers/#{ERB::Util.url_encode(promotions_tier_id)}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => nil, :headers => {})

    voucherify.promotions.tiers.delete(promotions_tier_id)
  end

  it 'should list tiers' do
    query = {
        :limit => 10,
        :page => 1,
        :is_available => true
    }

    stub_request(:get, "#{api_url}/promotions/tiers?limit=#{query[:limit]}&page=#{query[:page]}&is_available=#{query[:is_available]}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.promotions.tiers.list_tiers(query)
  end

end
