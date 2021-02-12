require 'uri'

module Voucherify
  module Service
    class Orders
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(order)
        @client.post('/orders', order.to_json)
      end

      def get(order_id)
        @client.get("/orders/#{ERB::Util.url_encode(order_id)}")
      end

      def update(order_id, order)
        @client.put("/orders/#{ERB::Util.url_encode(order_id)}", order.to_json)
      end

      def list(query = {})
        @client.get("/orders", query)
      end
    end
  end
end
