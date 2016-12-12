require 'uri'

module Voucherify
  module Service
    class Redemptions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def redemptions(query)
        @client.get('/redemptions/', query)
      end

      def rollback(redemption_id, tracking_id = nil, reason = nil)
        url = '/redemptions/'+ URI.encode(redemption_id) + '/rollback'
        if tracking_id || reason
          url += '?' + URI.encode_www_form(:tracking_id => tracking_id, :reason => reason)
        end
        @client.post(url, nil)
      end

    end
  end
end