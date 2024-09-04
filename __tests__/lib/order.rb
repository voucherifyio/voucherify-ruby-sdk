require_relative 'utils.rb'
require 'VoucherifySdk'

def create_order(order_api_instance)
  begin
    created_order = order_api_instance.create_order({
      orders_create_request_body: VoucherifySdk::OrdersCreateRequestBody.new({
        amount: 10000,
        status: 'CREATED',
        items: [
          {
            product_id: 'test_order_item1',
            quantity: 1
          },
          {
            product_id: 'test_order_item2',
            quantity: 1
          }
        ]
      })
    })

    return created_order

  rescue VoucherifySDk::ApiError => e
    return nil
  end
end

def get_order(order_api_instance, orderId)
  begin
    order = order_api_instance.get_order(orderId)

    return order

  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def update_order(order_api_instance, orderId)
  updated_order = order_api_instance.update_order(orderId, {
    orders_update_request_body: VoucherifySdk::OrdersUpdateRequestBody.new({
      amount: 30000,
      status: 'PAID'
    })
  })

  return updated_order

  rescue VoucherifySdk::ApiError => e
    return nil
end

def list_orders(order_api_instance)
  begin
    orders = order_api_instance.list_orders({
      limit: 10,
      page: 1
    })

    return orders

    rescue VoucherifySdk::ApiError => e
      return nil
  end
end