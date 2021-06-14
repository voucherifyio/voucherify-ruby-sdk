require 'spec_helper'
require 'rest-client'

describe 'Customers API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let(:customer) { {
      :id => 'id',
      :name => 'John Doe',
      :email => 'john@email.com',
      :description => 'Sample description about customer',
      :metadata => {
          :lang => 'en'
      }} }

  let(:consents) { {
      :groups => {},
      :consents => {}
  } }

  it 'should create customer' do
    stub_request(:post, 'https://api.voucherify.io/v1/customers')
        .with(body: customer.to_json, headers: headers)
        .to_return(:status => 200, :body => customer.to_json, :headers => {})

    voucherify.customers.create(customer)
  end

  it 'should get customer by id' do
    stub_request(:get, "https://api.voucherify.io/v1/customers/#{customer[:id]}")
        .to_return(:status => 200, :body => customer.to_json, :headers => {})

    voucherify.customers.get customer[:id]
  end

  it 'should update customer' do
    stub_request(:put, "https://api.voucherify.io/v1/customers/#{customer[:id]}")
        .to_return(:status => 200, :body => customer.to_json, :headers => {})
    customer[:description] = 'Sample description of customer with updates'

    voucherify.customers.update customer
  end

  it 'should delete customer by id' do
    stub_request(:delete, "https://api.voucherify.io/v1/customers/#{customer[:id]}")
        .to_return(:status => 200, :body => customer.to_json, :headers => {})

    voucherify.customers.delete customer[:id]
  end

  it 'should update customer consents' do
    stub_request(:put, "https://api.voucherify.io/v1/customers/#{customer[:id]}/consents")
        .to_return(:status => 200, :body => customer.to_json, :headers => {})

    voucherify.customers.update_consents(customer[:id], consents)
  end
end
