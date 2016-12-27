require 'spec_helper'
require 'rest-client'

describe 'Distributions API' do

  before(:all) do
    @voucherify = Voucherify::Client.new({
                                             :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                             :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                         })
  end

  it 'should publish campaign' do
    expect { @voucherify.distributions.publish('fake_campaign') }.to raise_error RestClient::NotFound
  end

end