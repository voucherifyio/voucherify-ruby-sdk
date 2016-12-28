require 'uri'

module Voucherify
  module Service
    class Redemptions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def redeem(code, params = {})
        url = '/vouchers/' + URI.encode(code) + '/redemption'
        @client.post(url, params.to_json)
      end

      def list(query = {})
        @client.get('/redemptions/', query)
      end

      def get_for_voucher(code)
        @client.get('/vouchers/' + URI.encode(code) + '/redemption')
      end

      def rollback(redemption_id, params = {})
        reason = params['reason'] || params[:reason]
        url = '/redemptions/'+ URI.encode(redemption_id) + '/rollback'
        url += '?reason=' + URI.encode(reason) if reason
        params.delete 'reason'
        params.delete :reason
        @client.post(url, params.to_json)
      end

    end
  end
end