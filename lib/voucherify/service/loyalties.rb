require 'uri'

module Voucherify
  module Service
    class Loyalties
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def earning_rules
        Voucherify::Service::LoyaltyEarningRules.new(@client)
      end

      def reward_assignments
        Voucherify::Service::LoyaltyRewards.new(@client)
      end

      def members
        Voucherify::Service::LoyaltyMembers.new(@client)
      end

      def list(query = {})
        @client.get('/loyalties', query)
      end

      def create(loyalty)
        @client.post("/loyalties", loyalty.to_json)
      end

      def update(loyalty_id, loyalty)
        @client.put("/loyalties/#{ERB::Util.url_encode(loyalty_id)}", loyalty.to_json)
      end

      def get(loyalty_id)
        @client.get("/loyalties/#{ERB::Util.url_encode(loyalty_id)}")
      end

      def delete(loyalty_id, query = {})
        @client.delete("/loyalties/#{ERB::Util.url_encode(loyalty_id)}", query)
        nil
      end
    end

    class LoyaltyEarningRules
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(loyalty_id, query = {})
        @client.get("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/earning-rules", query)
      end

      def create(loyalty_id, earning_rules)
        payload = earning_rules
        if earning_rules.is_a? Hash
          payload = [ earning_rules ]
        end
        @client.post("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/earning-rules", payload.to_json)
      end

      def update(loyalty_id, earning_rule_id, earning_rule)
        @client.put("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/earning-rules/#{ERB::Util.url_encode(earning_rule_id)}", earning_rule.to_json)
      end

      def delete(loyalty_id, earning_rule_id)
        @client.delete("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/earning-rules/#{ERB::Util.url_encode(earning_rule_id)}")
        nil
      end
    end

    class LoyaltyRewards
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(loyalty_id, query = {})
        @client.get("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/rewards", query)
      end

      def create(loyalty_id, assignments)
        payload = assignments
        if assignments.is_a? Hash
          payload = [ assignments ]
        end
        @client.post("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/rewards", payload.to_json)
      end

      def update(loyalty_id, assignment_id, assignment)
        @client.put("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/rewards/#{ERB::Util.url_encode(assignment_id)}", assignment.to_json)
      end

      def delete(loyalty_id, assignment_id)
        @client.delete("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/rewards/#{ERB::Util.url_encode(assignment_id)}")
        nil
      end
    end

    class LoyaltyMembers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def list(loyalty_id, query = {})
        @client.get("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/members", query)
      end

      def add(loyalty_id, member)
        @client.post("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/members", member.to_json)
      end

      def get(loyalty_id, member_id)
        @client.get("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/members/#{ERB::Util.url_encode(member_id)}")
      end

      def add_balance(loyalty_id, member_id, payload)
        @client.post("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/members/#{ERB::Util.url_encode(member_id)}/balance", payload.to_json)
      end

      def redeem_reward(loyalty_id, member_id, payload)
        @client.post("/loyalties/#{ERB::Util.url_encode(loyalty_id)}/members/#{ERB::Util.url_encode(member_id)}/redemption", payload.to_json)
      end
    end

  end
end
