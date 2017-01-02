require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Campaigns API' do

  let(:application_id) { 'application_id' }
  let(:client_secret_key) { 'client_secret_key' }

  let(:voucherify) { Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key}) }
  let(:headers) { {
      'X-App-Id' => application_id,
      'X-App-Token' => client_secret_key,
      'X-Voucherify-Channel' => 'Ruby-SDK',
      :accept => 'application/json'
  } }

  let (:product) { {
      :id => 'some_id',
      :name => 'name',
      :source_id => 'source_id'
  } }

  let (:sku) {
    {
        :id => 'sku_id',
        :sku => 'sku',
        :source_id => 'source_id'
    }
  }

  it 'should create product' do
    stub_request(:post, 'https://api.voucherify.io/v1/products')
        .with(body: product.to_json, headers: headers)
        .to_return(:status => 200, :body => product.to_json, :headers => {})

    voucherify.products.create(product)
  end

  it 'should get product' do
    stub_request(:get, "https://api.voucherify.io/v1/products/#{product[:id]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => product.to_json, :headers => {})

    voucherify.products.get(product[:id])
  end

  it 'should update product' do
    stub_request(:put, "https://api.voucherify.io/v1/products/#{product[:id]}")
        .with(body: product.to_json, headers: headers)
        .to_return(:status => 200, :body => product.to_json, :headers => {})

    voucherify.products.update(product)
  end

  it 'should delete product' do
    stub_request(:delete, "https://api.voucherify.io/v1/products/#{product[:id]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.products.delete(product[:id])
  end

  it 'should list products' do
    query = {
        :limit => 10,
        :skip => 20,
        :page => 3
    }

    stub_request(:get, "https://api.voucherify.io/v1/products?limit=#{query[:limit]}&skip=#{query[:skip]}&page=#{query[:page]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.products.list(query)
  end

  it 'should create sku' do
    stub_request(:post, "https://api.voucherify.io/v1/products/#{product[:id]}/skus")
        .with(body: sku.to_json, headers: headers)
        .to_return(:status => 200, :body => sku.to_json, :headers => {})

    voucherify.products.create_sku(product[:id], sku)
  end

  it 'should get sku' do
    stub_request(:get, "https://api.voucherify.io/v1/products/#{product[:id]}/skus/#{sku[:id]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => sku.to_json, :headers => {})

    voucherify.products.get_sku(product[:id], sku[:id])
  end

  it 'should update sku' do
    stub_request(:put, "https://api.voucherify.io/v1/products/#{product[:id]}/skus/#{sku[:id]}")
        .with(body: sku.to_json, headers: headers)
        .to_return(:status => 200, :body => sku.to_json, :headers => {})

    voucherify.products.update_sku(product[:id], sku)
  end

  it 'should delete sku' do
    stub_request(:delete, "https://api.voucherify.io/v1/products/#{product[:id]}/skus/#{sku[:id]}")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '', :headers => {})

    voucherify.products.delete_sku(product[:id], sku[:id])
  end

  it 'should list skus' do
    stub_request(:get, "https://api.voucherify.io/v1/products/#{product[:id]}/skus")
        .with(body: {}, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.products.list_skus(product[:id])
  end

end