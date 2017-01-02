require 'spec_helper'

describe 'Voucherify Client' do

  let(:app_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => app_id, :clientSecretKey => client_secret_key}) }

  it 'should have backend url set' do
    expect(voucherify.backend_url).to eql('https://api.voucherify.io/v1')
  end
end