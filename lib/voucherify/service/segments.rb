require 'uri'

module Voucherify
  module Service
    class Segments
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(segment)
        @client.post('/segments', segment.to_json)
      end

      def get(id)
        @client.get("/segments/#{ERB::Util.url_encode(id)}")
      end

      def delete(id)
        @client.delete("/segments/#{ERB::Util.url_encode(id)}")
      end
    end
  end
end