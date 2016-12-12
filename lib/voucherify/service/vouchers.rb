require 'uri'

module Voucherify
  module Service
    class Vouchers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def get(code)
        @client.get('/vouchers/' + URI.encode(code))
      end

      def list(query)
        @client.get('/vouchers/', query)
      end

      def redemption(code)
        @client.get('/vouchers/' + URI.encode(code) + '/redemption')
      end

      def validate(code, context = {})
        @client.post('/vouchers/' + URI.encode(code) + '/validate', context.to_json)
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

      def create(code, options = {})
        url = '/vouchers/'
        url += URI.encode(code) if code
        @client.post(url, options.to_json)
      end

      def update(voucher_update)
        url = '/vouchers/' + URI.encode(voucher_update[:code])
        @client.put(url, voucher_update.to_json)
      end

      def enable(code)
        url = '/vouchers/' + URI.encode(code) + '/enable'
        @client.post(url, nil)
        nil
      end

      def disable(code)
        url = '/vouchers/' + URI.encode(code) + '/disable'
        @client.post(url, nil)
        nil
      end

    end
  end
end