require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Orders API' do

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

  let(:customer) {{
    :id => 'some_id',
    :source_id => 'some_source_id'
  }}

  let(:order) {{
    :customer => customer,
    :amount => 10,
    :items => []
  }}

  let(:order_id) { 'order_id' }

  it 'should create order' do
    stub_request(:post, "#{api_url}/orders")
      .with(body: order.to_json, headers: headers)
      .to_return(:status => 200, :body => order.to_json, :headers => {})

    voucherify.orders.create(order)
  end

  it 'should get order' do
    stub_request(:get, "#{api_url}/orders/#{order_id}")
      .with(body: {}, headers: headers)
      .to_return(:status => 200, :body => order.to_json, :headers => {})

    voucherify.orders.get(order_id)
  end

  it 'should update order' do
    stub_request(:put, "#{api_url}/orders/#{order_id}")
      .with(body: order.to_json, headers: headers)
      .to_return(:status => 200, :body => order.to_json, :headers => {})

    voucherify.orders.update(order_id, order)
  end

  it 'should list orders' do
    query = {
      :limit => 20,
      :page => 1
    }

    stub_request(:get, "#{api_url}/orders?limit=#{query[:limit]}&page=#{query[:page]}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.orders.list(query)
  end

end
