require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Consents API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:consents) { {
      :groups => {},
      :consents => {}
  } }

  it 'should get consents' do
    stub_request(:get, "https://api.voucherify.io/v1/consents")
        .with(headers: headers)
        .to_return(:status => 200, :body => consents.to_json, :headers => {})

    voucherify.consents.get()
  end

end
