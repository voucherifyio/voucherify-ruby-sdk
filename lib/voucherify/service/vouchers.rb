require 'uri'

module Voucherify
  module Service
    class Vouchers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(code, options = {})
        url = '/vouchers/'
        url += URI.encode(code) if code
        @client.post(url, options.to_json)
      end

      def get(code)
        @client.get('/vouchers/' + URI.encode(code))
      end

      def update(voucher_update)
        url = '/vouchers/' + URI.encode(voucher_update[:code])
        @client.put(url, voucher_update.to_json)
      end

      def list(query)
        @client.get('/vouchers/', query)
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