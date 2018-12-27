require 'spec_helper'

describe 'Voucherify Client' do

  let(:app_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => app_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
    'X-App-Id' => app_id,
    'X-App-Token' => client_secret_key,
    'X-Voucherify-Channel' => 'Ruby-SDK',
    :accept => 'application/json'
  } }

  it 'should have backend url set' do
    expect(voucherify.backend_url).to eql('https://api.voucherify.io/v1')
  end

  it 'should parse error' do
    stub_request(:get, "https://api.voucherify.io/v1/vouchers/notFound")
        .with(body: {}, headers: headers)
        .to_return(:status => 404, :headers => {}, :body => {
            'code' => 404,
            'message' => 'Resource not found',
            'details' => 'Cannot find Voucher with code: notFound',
            'key' => 'resource_not_found'
        }.to_json)
    begin
        voucherify
    rescue Voucherify::VoucherifyError => e
        expect(e.code).to eql(404)
        expect(e.message).to eql('Resource not found')
        expect(e.details).to eql('Cannot find Voucher with code: notFound')
        expect(e.key).to eql('resource_not_found')
    end
  end
end
