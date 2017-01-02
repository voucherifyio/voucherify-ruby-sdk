require 'uri'

module Voucherify
  module Service
    class Campaigns
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(campaign)
        @client.post('/campaigns', campaign.to_json)
      end

      def get(campaign_name)
        @client.get("/campaigns/#{URI.encode(campaign_name)}")
      end

      def delete(campaign_name, params = {})
        @client.delete("/campaigns/#{URI.encode(campaign_name)}", {:force => (!!(params['force'] || params[:force])).to_s})
        nil
      end

      def add_voucher(campaign_name, params = {})
        code = params['code'] || params[:code]
        url = "/campaigns/#{URI.encode(campaign_name)}/vouchers"
        url += "/#{URI.encode(code)}" if code
        params.delete 'code'
        params.delete :code
        @client.post(url, params.to_json)
      end

      def import_vouchers(campaign_name, vouchers)
        @client.post("/campaigns/#{URI.encode(campaign_name)}/import", vouchers.to_json)
      end
    end
  end
end