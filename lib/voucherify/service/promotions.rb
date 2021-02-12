require 'uri'

module Voucherify
  module Service
    class Promotions
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(campaign)
        @client.campaigns.create(campaign)
      end

      def validate(validation_context)
        @client.post('/promotions/validation', validation_context.to_json)
      end

      def tiers
        Voucherify::Service::PromotionTiers.new(@client)
      end
    end

    class PromotionTiers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(promotion_id)
        @client.get("/promotions/#{ERB::Util.url_encode(promotion_id)}/tiers")
      end

      def create(promotion_id, promotion_tier)
        @client.post("/promotions/#{ERB::Util.url_encode(promotion_id)}/tiers", promotion_tier.to_json)
      end

      def redeem(promotions_tier_id, redemption_context)
        @client.post("/promotions/tiers/#{ERB::Util.url_encode(promotions_tier_id)}/redemption", redemption_context.to_json)
      end

      def update(promotions_tier)
        @client.put("/promotions/tiers/#{ERB::Util.url_encode(promotions_tier['id'] || promotions_tier[:id])}", promotions_tier.to_json)
      end

      def delete(promotions_tier_id)
        @client.delete("/promotions/tiers/#{ERB::Util.url_encode(promotions_tier_id)}")
        nil
      end

      def list_tiers(query = {})
        @client.get("/promotions/tiers", query)
      end
    end
  end
end
