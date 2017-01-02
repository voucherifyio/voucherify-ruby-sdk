require 'uri'

module Voucherify
  module Service
    class Distributions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def publish(params)
        payload = {}
        if params.is_a? String
          payload = {:campaign => params}
        elsif params.is_a? Hash
          payload = params
        end

        @client.post('/vouchers/publish', payload.to_json)
      end
    end
  end
end