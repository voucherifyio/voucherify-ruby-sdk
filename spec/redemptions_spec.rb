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

end