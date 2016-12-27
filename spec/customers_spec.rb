require 'spec_helper'
require 'rest-client'

describe 'Customers API' do

  voucherify = Voucherify::Client.new({
                                          :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                          :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                      })

  $created_customer = nil

  it 'should create customer' do
    customer = {
        name: 'John Doe',
        email: 'john@email.com',
        description: 'Sample description about customer',
        metadata: {
            lang: 'en'
        }
    }

    $created_customer = voucherify.customers.create customer

    expect($created_customer['name']).to eql customer[:name]
    expect($created_customer['email']).to eql customer[:email]
    expect($created_customer['description']).to eql customer[:description]
    expect($created_customer['metadata']['lang']).to eql customer[:metadata][:lang]
  end

  it 'should get customer by id' do
    customer = voucherify.customers.get $created_customer['id']

    expect(customer['name']).to eql $created_customer['name']
    expect(customer['email']).to eql $created_customer['email']
    expect(customer['description']).to eql $created_customer['description']
    expect(customer['metadata']['lang']).to eql $created_customer['metadata']['lang']
  end

  it 'should update customer' do
    $created_customer['description'] = 'Sample description of customer with updates'
    updated_customer = voucherify.customers.update $created_customer

    expect(updated_customer['name']).to eql $created_customer['name']
    expect(updated_customer['email']).to eql $created_customer['email']
    expect(updated_customer['description']).to eql $created_customer['description']
    expect(updated_customer['metadata']['lang']).to eql $created_customer['metadata']['lang']
  end

  it 'should delete customer by id' do
    voucherify.customers.delete $created_customer['id']

    expect { voucherify.customers.get $created_customer['id'] }.to raise_error RestClient::NotFound
  end
end