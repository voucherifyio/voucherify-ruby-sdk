require 'uri'

module Voucherify
  module Service
    class Validations
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def validate_voucher(code, context = {})
        @client.post("/vouchers/#{URI.encode(code)}/validate", context.to_json)
      end

      def create(code, context = {})
        if code.is_a? String
          @client.validations.validate_voucher(code, context)
        elsif code.is_a? Hash
          context = code
          @client.promotions.validate(context)
        end
      end

    end
  end
end