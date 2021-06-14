require 'uri'

module Voucherify
  module Service
    class Consents
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def get()
        @client.get('/consents')
      end
    end
  end
end
