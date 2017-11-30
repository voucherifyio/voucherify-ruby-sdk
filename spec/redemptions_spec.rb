require 'spec_helper'
require 'rest-client'

describe 'Redemptions API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }
  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:discount) { {
      :code => 'discount',
      :type => 'DISCOUNT_VOUCHER',
      :discount => {
          :type => 'PERCENT',
          :percent_off => 10
      }
  } }

  let(:redemption) { {
      :id => 'r_XbytKOFW8wnheSScssMgRNMm'
  } }

  let (:redemption_id) { 'redemption_id' }

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
  let(:tracking_id) {'john.doe@example.com'}
  let(:customer_id) {'cust_test_id'}
  let(:promo_redemption_context) {{
      :customer => {
          :id => customer_id
      },
      :order => {
          :amount => 25000
      },
      :metadata => {}
  }}
  let(:promo_redemption_response) {{
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
      :promotion_tier => promotions_tier.merge({id: promotions_tier_id})
  }}

  it 'should redeem voucher' do
    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{discount[:code]}/redemption")
        .with(:body => {}, headers: headers)
        .to_return(:status => 200, :body => discount.to_json, :headers => {})

    voucherify.redemptions.redeem(discount[:code])
  end

  it 'should redeem voucher with params' do
    params = {
        :customer => {
            :source_id => 'john@email.com'
        }
    }
    stub_request(:post, "https://api.voucherify.io/v1/vouchers/#{discount[:code]}/redemption")
        .with(:body => params.to_json, headers: headers)
        .to_return(:status => 200, :body => params.to_json, :headers => {})

    voucherify.redemptions.redeem(discount[:code], params)
  end

  it 'should provide a list of redemptions' do
    query = {
        :limit => 10,
        :result => 'SUCCESS'
    }
    stub_request(:get, "https://api.voucherify.io/v1/redemptions?limit=#{query[:limit]}&result=#{query[:result]}")
        .with(:body => {}, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.redemptions.list(query)
  end

  it 'should get redemptions for voucher' do
    stub_request(:get, "https://api.voucherify.io/v1/vouchers/#{discount[:code]}/redemption")
        .with(:body => {}, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.redemptions.get_for_voucher discount[:code]
  end

  it 'should rollback redemption' do
    params = {
        :customer => {
            :source_id => 'john@email.com'
        }
    }
    stub_request(:post, "https://api.voucherify.io/v1/redemptions/#{redemption_id}/rollback")
        .with(:body => params.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})


    voucherify.redemptions.rollback(redemption_id, params)
  end

  it 'should rollback redemption with reason' do
    params = {
        :reason => 'mistake',
        :customer => {
            :source_id => 'john@email.com'
        }
    }

    stub_request(:post, "https://api.voucherify.io/v1/redemptions/#{redemption_id}/rollback?reason=#{params[:reason]}")
        .with(:body => {:customer => {:source_id => params[:customer][:source_id]}}.to_json, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.redemptions.rollback(redemption_id, params)
  end

    it 'should get redemption' do
    stub_request(:get, "https://api.voucherify.io/v1/redemptions/#{redemption[:id]}")
        .with(:body => '', headers: headers)
        .to_return(:status => 200, :body => '{}', :headers => {})

    voucherify.redemptions.get_redemption redemption[:id]
    end

  it 'should redeem promotion campaign' do
    stub_request(:post, "https://api.voucherify.io/v1/promotions/tiers/#{promotions_tier_id}/redemption")
        .with(body: promo_redemption_context.to_json, headers: headers)
        .to_return(:status => 200, :body => promo_redemption_response.to_json, :headers => {})

    voucherify.redemptions.redeem(promotions_tier.merge({:id => promotions_tier_id}), promo_redemption_context)
  end

end