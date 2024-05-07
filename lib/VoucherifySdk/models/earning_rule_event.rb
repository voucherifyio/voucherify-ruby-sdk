=begin
#Voucherify API

#Voucherify promotion engine REST API. Please see https://docs.voucherify.io/docs for more details.

The version of the OpenAPI document: v2018-08-01
Contact: support@voucherify.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module VoucherifySdk
  class EarningRuleEvent
    ORDER_PAID = "order.paid".freeze
    CUSTOMER_SEGMENT_ENTERED = "customer.segment.entered".freeze
    CUSTOM_EVENT = "custom_event".freeze
    CUSTOMER_LOYALTY_TIER_UPGRADED = "customer.loyalty.tier.upgraded".freeze
    CUSTOMER_LOYALTY_TIER_DOWNGRADED = "customer.loyalty.tier.downgraded".freeze
    CUSTOMER_LOYALTY_TIER_PROLONGED = "customer.loyalty.tier.prolonged".freeze
    CUSTOMER_LOYALTY_TIER_JOINED = "customer.loyalty.tier.joined".freeze
    CUSTOMER_LOYALTY_TIER_LEFT = "customer.loyalty.tier.left".freeze

    def self.all_vars
      @all_vars ||= [ORDER_PAID, CUSTOMER_SEGMENT_ENTERED, CUSTOM_EVENT, CUSTOMER_LOYALTY_TIER_UPGRADED, CUSTOMER_LOYALTY_TIER_DOWNGRADED, CUSTOMER_LOYALTY_TIER_PROLONGED, CUSTOMER_LOYALTY_TIER_JOINED, CUSTOMER_LOYALTY_TIER_LEFT].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if EarningRuleEvent.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #EarningRuleEvent"
    end
  end
end
