require_relative '../lib/customers.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'

RSpec.describe 'Customers API', :order => :defined do
  before(:each) do
    @customers_api_instance = Config.customers_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'create a customer', :order => :first do
    created_customer = create_customer(@customers_api_instance)
    expect(created_customer).not_to be_nil
    @voucherify_data.set_customer(created_customer)
  end

  it 'create a customer and delete it', :order => :second do
    created_customer = create_customer(@customers_api_instance)
    expect(created_customer).not_to be_nil

    result = delete_customer_permanently(@customers_api_instance, created_customer.id)
    expect(created_customer).not_to be_nil
  end
end
