require 'spec_helper'
require 'rest-client'

describe 'Events API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:custom_event_payload) {{
      :event => 'custom_event_name',
      :metadata => {
          :test => true
      },
      :customer => {
          :id => 'cust_test_id'
      },
      :referral => nil
  }}

  let(:custom_event_response) {{
      :object => 'event',
      :type => 'custom_event_name'
  }}

  it 'should track event' do
    stub_request(:post, 'https://api.voucherify.io/v1/events')
        .with(body: custom_event_payload.to_json, headers: headers)
        .to_return(:status => 200, :body => custom_event_response.to_json, :headers => {})

    voucherify.events.track('custom_event_name', { :test => true }, { :id => 'cust_test_id' })
  end

  it 'should track custom event' do
    stub_request(:post, 'https://api.voucherify.io/v1/events')
        .with(body: custom_event_payload.to_json, headers: headers)
        .to_return(:status => 200, :body => custom_event_response.to_json, :headers => {})

    voucherify.events.track_event(custom_event_payload)
  end

end
