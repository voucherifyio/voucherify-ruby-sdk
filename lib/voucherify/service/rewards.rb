require 'uri'

module Voucherify
  module Service
    class Rewards
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def assignments
        Voucherify::Service::RewardAssignments.new(@client)
      end

      def create(reward)
        @client.post('/rewards', reward.to_json)
      end

      def get(reward_id)
        @client.get("/rewards/#{ERB::Util.url_encode(reward_id)}")
      end

      def update(reward_id, reward)
        @client.put("/rewards/#{ERB::Util.url_encode(reward_id)}", reward.to_json)
      end

      def list(query = {})
        @client.get("/rewards", query)
      end

      def delete(reward_id)
        @client.delete("/rewards/#{ERB::Util.url_encode(reward_id)}")
        nil
      end
    end

    class RewardAssignments
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(reward_id, query = {})
        @client.get("/rewards/#{ERB::Util.url_encode(reward_id)}/assignments", query)
      end

      def create(reward_id, assignment)
        @client.post("/rewards/#{ERB::Util.url_encode(reward_id)}/assignments", assignment.to_json)
      end

      def update(reward_id, assignment_id, assignment)
        @client.put("/rewards/#{ERB::Util.url_encode(reward_id)}/assignments/#{ERB::Util.url_encode(assignment_id)}", assignment.to_json)
      end

      def delete(reward_id, assignment_id)
        @client.delete("/rewards/#{ERB::Util.url_encode(reward_id)}/assignments/#{ERB::Util.url_encode(assignment_id)}")
        nil
      end
    end
  end
end
