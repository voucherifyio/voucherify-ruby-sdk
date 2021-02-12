require 'uri'

module Voucherify
  module Service
    class ValidationRules
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def assignments
        Voucherify::Service::ValidationRulesAssignments.new(@client)
      end

      def create(validation_rules)
        @client.post('/validation-rules', validation_rules.to_json)
      end

      def list(query)
        @client.get('/validation-rules', query)
      end

      def get(id)
        @client.get("/validation-rules/#{ERB::Util.url_encode(id)}")
      end

      def update(validation_rules)
        @client.put("/validation-rules/#{ERB::Util.url_encode(validation_rules['id'] || validation_rules[:id])}", validation_rules.to_json)
      end

      def delete(id)
        @client.delete("/validation-rules/#{ERB::Util.url_encode(id)}")
      end

      def createAssignment(id, assignment)
        @client.post("/validation-rules/#{ERB::Util.url_encode(id)}/assignments", assignment.to_json)
      end

      def deleteAssignment(rule_id, assignment_id)
        @client.delete("/validation-rules/#{ERB::Util.url_encode(rule_id)}/assignments/#{ERB::Util.url_encode(assignment_id)}")
      end

      def listAssignments(id, query)
        @client.get("/validation-rules/#{ERB::Util.url_encode(id)}/assignments", query)
      end
    end

    class ValidationRulesAssignments
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(rule_id, assignment)
        @client.post("/validation-rules/#{ERB::Util.url_encode(rule_id)}/assignments", assignment.to_json)
      end

      def delete(rule_id, assignment_id)
        @client.delete("/validation-rules/#{ERB::Util.url_encode(rule_id)}/assignments/#{ERB::Util.url_encode(assignment_id)}")
      end

      def list(rule_id, query)
        @client.get("/validation-rules/#{ERB::Util.url_encode(rule_id)}/assignments", query)
      end
    end
  end
end
