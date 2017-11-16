require 'uri'

module Voucherify
  module Service
    class Events
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def track(event, metadata, customer)
        @client.post('/events', {
            :event => event,
            :metadata => metadata,
            :customer => customer
        }.to_json)
      end
    end
  end
end