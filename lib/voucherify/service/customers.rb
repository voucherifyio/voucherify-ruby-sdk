require 'erb'

module Voucherify
  module Service
    class Customers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(params = {})
        @client.get('/customers', params)
      end

      def create(customer)
        @client.post('/customers', customer.to_json)
      end

      def get(customer_id)
        @client.get("/customers/#{ERB::Util.url_encode(customer_id)}")
      end

      def update(customer)
        @client.put("/customers/#{ERB::Util.url_encode(customer['id'] || customer[:id])}", customer.to_json)
      end

      def delete(customer_id)
        @client.delete("/customers/#{ERB::Util.url_encode(customer_id)}")
      end

      def update_consents(customer_id, consents)
        @client.put("/customers/#{ERB::Util.url_encode(customer_id)}/consents", consents.to_json)
      end
    end
  end
end
