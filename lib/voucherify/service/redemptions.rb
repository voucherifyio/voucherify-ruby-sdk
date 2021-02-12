require 'uri'

module Voucherify
  module Service
    class Redemptions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def redeem(code, params = {})
        if code.is_a? Hash
          endpoint = "/promotions/tiers/#{ERB::Util.url_encode(code[:id] || code['id'])}/redemption"
        else
          endpoint = "/vouchers/#{ERB::Util.url_encode(code)}/redemption"
        end
        @client.post(endpoint, params.to_json)
      end

      def list(query = {})
        @client.get('/redemptions', query)
      end

      def get_for_voucher(code)
        @client.get("/vouchers/#{ERB::Util.url_encode(code)}/redemption")
      end

      def rollback(redemption_id, payload = {})
        reason = payload['reason'] || payload[:reason]
        params = reason ? {:reason => reason} : {}
        payload.delete 'reason'
        payload.delete :reason
        @client.post("/redemptions/#{ERB::Util.url_encode(redemption_id)}/rollback", payload.to_json, params)
      end

      def get_redemption(redemption_id)
        @client.get("/redemptions/#{ERB::Util.url_encode(redemption_id)}")
      end
    end
  end
end
