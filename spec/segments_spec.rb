require 'spec_helper'
require 'rest-client'

describe 'Segments API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:segment) { {
      :id => 'id',
      :name => 'John Doe',
      :customers => ['cust_1'],
      :type => 'static'
      } }

  it 'should create segment' do
    stub_request(:post, 'https://api.voucherify.io/v1/segments')
        .with(body: segment.to_json, headers: headers)
        .to_return(:status => 200, :body => segment.to_json, :headers => {})

    voucherify.segments.create(segment)
  end

  it 'should get segment by id' do
    stub_request(:get, "https://api.voucherify.io/v1/segments/#{segment[:id]}")
        .to_return(:status => 200, :body => '{}', :headers => {})

    voucherify.segments.get segment[:id]
  end

  it 'should delete segment by id' do
    stub_request(:delete, "https://api.voucherify.io/v1/segments/#{segment[:id]}")
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.segments.delete segment[:id]
  end
end