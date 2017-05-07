require 'spec_helper'
require 'rest-client'

describe 'Distributions API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:payload) { {
      :campaign => '300k-vouchers',
      :customer => {
          :source_id => 'source_id'
      }
  } }

  let(:export) { {
      :id => 'id',
      :exported_object => 'voucher',
      :parameters => {
        :fields => ['code', 'voucher_type'],
        :filters => {
          :categories => {
            :conditions => {
              '$in' => ['postman']
            }
          }
        }
      }
  } }

  it 'should publish vouchers' do
    stub_request(:post, 'https://api.voucherify.io/v1/vouchers/publish')
        .with(body: payload.to_json, headers: headers)
        .to_return(:status => 200, :body => payload.to_json, :headers => {})

    voucherify.distributions.publish(payload)
  end

  it 'should get export by id' do
    stub_request(:get, "https://api.voucherify.io/v1/exports/#{export[:id]}")
        .with(body: '', headers: headers)
        .to_return(:status => 200, :body => export.to_json, :headers => {})

    voucherify.distributions.get_export export[:id]
  end

  it 'should delete export by id' do
    stub_request(:delete, "https://api.voucherify.io/v1/exports/#{export[:id]}")
        .with(body: '', headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.distributions.delete_export export[:id]
  end

end