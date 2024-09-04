require_relative '../lib/customers.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Customers API', :order => :defined do
  before(:each) do
    @customers_api_instance = Config.customers_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'create a customer', :order => :first do
    created_customer = create_customer(@customers_api_instance)

    snapshot_name = 'customers/created_customer'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(created_customer).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_customer)).to be true
    @voucherify_data.set_customer(created_customer)
  end

  it 'create a customer and delete it', :order => :second do
    created_customer = create_customer(@customers_api_instance)
    deleted_customer = delete_customer_permanently(@customers_api_instance, created_customer.id)

    snapshot_name_created_customer = 'customers/created_customer'
    snapshot_name_deleted_customer = 'customers/deleted_customer'
    filtered_created_customer_snapshot = get_snapshot_without_uniq_keys(snapshot_name_created_customer)
    filtered_deleted_customer_snapshot = get_snapshot_without_uniq_keys(snapshot_name_deleted_customer)

    expect(created_customer).not_to be_nil
    expect(created_customer).not_to be_nil
    expect(validate_deep_match(filtered_created_customer_snapshot, created_customer)).to be true
    expect(validate_deep_match(filtered_deleted_customer_snapshot, deleted_customer)).to be true
  end
end
