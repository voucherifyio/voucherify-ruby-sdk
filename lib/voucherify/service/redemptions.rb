require 'uri'

module Voucherify
  module Service
    class Redemptions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def redeem(code, tracking_id = nil)
        payload = {}

        if code.is_a? Hash
          payload = code
          code = payload['voucher'] || payload[:voucher]
          payload.delete 'voucher'
          payload.delete :voucher
        end

        url = '/vouchers/' + URI.encode(code) + '/redemption'
        url += ('?tracking_id=' + URI.encode(tracking_id)) if tracking_id

        @client.post(url, payload.to_json)
      end

      def list(query = {})
        @client.get('/redemptions/', query)
      end

      def get_for_voucher(code)
        @client.get('/vouchers/' + URI.encode(code) + '/redemption')
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