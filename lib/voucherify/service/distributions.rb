require 'uri'

module Voucherify
  module Service
    class Distributions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def publish(campaign_name)
        url = '/vouchers/publish'
        payload = {}

        if campaign_name.is_a? String
          url += '?campaign=' + URI.encode(campaign_name)
        elsif campaign_name.is_a? Hash
          payload = campaign_name
        end

        @client.post(url, payload.to_json)
      end
    end
  end
end