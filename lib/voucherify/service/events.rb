require 'uri'

module Voucherify
  module Service
    class Events
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def track(event, customer, metadata)
        @client.post('/events', {
            :event => event,
            :customer => customer,
            :metadata => metadata
        }.to_json)
      end
    end
  end
end