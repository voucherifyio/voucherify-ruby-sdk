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
  class LoyaltyCardTransactionsType
    PENDING_ACTIVATION = "POINTS_PENDING_ACTIVATION".freeze
    ACCRUAL = "POINTS_ACCRUAL".freeze
    REDEMPTION = "POINTS_REDEMPTION".freeze
    REFUND = "POINTS_REFUND".freeze
    ADDITION = "POINTS_ADDITION".freeze
    REMOVAL = "POINTS_REMOVAL".freeze
    EXPIRATION = "POINTS_EXPIRATION".freeze
    TRANSFER_IN = "POINTS_TRANSFER_IN".freeze
    TRANSFER_OUT = "POINTS_TRANSFER_OUT".freeze

    def self.all_vars
      @all_vars ||= [PENDING_ACTIVATION, ACCRUAL, REDEMPTION, REFUND, ADDITION, REMOVAL, EXPIRATION, TRANSFER_IN, TRANSFER_OUT].freeze
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
      return value if LoyaltyCardTransactionsType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #LoyaltyCardTransactionsType"
    end
  end
end
