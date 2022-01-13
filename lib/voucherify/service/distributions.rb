require 'uri'

module Voucherify
  module Service
    class Distributions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def publish(params)
        payload = {}
        if params.is_a? String
          payload = {:campaign => params}
        elsif params.is_a? Hash
          payload = params
        end

        @client.post('/vouchers/publish', payload.to_json)
      end

      def create_export(export)
        @client.post('/exports', export)
      end

      def get_export(id)
        @client.get("/exports/#{ERB::Util.url_encode(id)}")
      end

      def delete_export(id)
        @client.delete("/exports/#{ERB::Util.url_encode(id)}")
      end

      def list_publications(params = {})
        @client.get('/publications', params)
      end

      def create_publication(params)
        @client.post('/publications', params.to_json)
      end

      def create_publication(query, params = {})
        url = '/publications'
        url += "?#{URI.encode_www_form(query)}"
        @client.post(url, params.to_json)
      end
    end
  end
end
