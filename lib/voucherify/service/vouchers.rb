require 'uri'

module Voucherify
  module Service
    class Vouchers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(code, options = {})
        url = '/vouchers'
        url += '/' + URI.encode(code) if code
        @client.post(url, options.to_json)
      end

      def get(code)
        @client.get("/vouchers/#{URI.encode(code)}")
      end

      def update(voucher_update)
        @client.put("/vouchers/#{URI.encode(voucher_update['code'] || voucher_update[:code])}", voucher_update.to_json)
      end

      def list(query)
        @client.get('/vouchers', query)
      end

      def enable(code)
        @client.post("/vouchers/#{URI.encode(code)}/enable", nil)
        nil
      end

      def disable(code)
        @client.post("/vouchers/#{URI.encode(code)}/disable", nil)
        nil
      end

      def delete(code, params = {})
        @client.delete("/vouchers/#{URI.encode(code)}", {:force => (!!(params['force'] || params[:force])).to_s})
        nil
      end

      def import(vouchers)
        @client.post('/vouchers/import', vouchers.to_json);
      end
    end
  end
end