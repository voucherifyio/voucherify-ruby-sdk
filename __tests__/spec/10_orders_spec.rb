require_relative '../lib/order.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Order API', :order => :defined do
  before(:each) do
    @order_api_instance = Config.order_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'should create order with status "created"', :order => :first do
    begin
      created_order = create_order(@order_api_instance)

      snapshot_name = 'orders/created_order'
      filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

      expect(created_order).not_to be_nil
      expect(validate_deep_match(filtered_snapshot, created_order)).to be true

      @voucherify_data.set_order(created_order)
    end
  end

  it 'should get previously order with status "created"', :order => :second do
    begin
      order = get_order(@order_api_instance, @voucherify_data.get_order().id)

      snapshot_name = 'orders/created_order'
      filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

      expect(order).not_to be_nil
      expect(validate_deep_match(filtered_snapshot, order)).to be true
    end
  end

  it 'should update previously order with status "created" to "paid"', :order => :third do
    begin
      updated_order = update_order(@order_api_instance, @voucherify_data.get_order().id)

      snapshot_name = 'orders/updated_created_order_to_paid_status'
      filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

      expect(updated_order).not_to be_nil
      expect(validate_deep_match(filtered_snapshot, updated_order)).to be true

      @voucherify_data.set_order(updated_order)
    end
  end

  it 'should list first 10 orders', :order => :fourth do
    begin
      orders = list_orders(@order_api_instance)

      expect(orders).not_to be_nil
    end
  end
end
