require 'uri'

module Voucherify
  module Service
    class ValidationRules
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(validation_rules)
        @client.post('/validation-rules', validation_rules.to_json)
      end

      def get(id)
        @client.get("/validation-rules/#{URI.encode(id)}")
      end

      def update(validation_rules)
        @client.put("/validation-rules/#{URI.encode(validation_rules['id'] || validation_rules[:id])}", validation_rules.to_json)
      end

      def delete(id)
        @client.delete("/validation-rules/#{URI.encode(id)}")
      end
    end
  end
end