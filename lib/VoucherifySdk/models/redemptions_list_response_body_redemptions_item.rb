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
  class RedemptionsListResponseBodyRedemptionsItem
    attr_accessor :id

    attr_accessor :object

    # Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format.
    attr_accessor :date

    # Unique customer ID of the redeeming customer.
    attr_accessor :customer_id

    # Hashed customer source ID.
    attr_accessor :tracking_id

    attr_accessor :metadata

    # For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. and For gift cards, this represents the number of the credits restored to the card in the rolledback redemption. The number is a negative integer in the smallest currency unit, e.g. -100 cents for $1.00 added back to the card. For loyalty cards, this represents the number of loyalty points restored to the card in the rolledback redemption. The number is a negative integer.
    attr_accessor :amount

    # Unique redemption ID of the parent redemption.
    attr_accessor :redemption

    # Redemption result.
    attr_accessor :result

    attr_accessor :status

    attr_accessor :related_redemptions

    # If the result is `FAILURE`, this parameter will provide a generic reason as to why the redemption failed.
    attr_accessor :failure_code

    # If the result is `FAILURE`, this parameter will provide a more expanded reason as to why the redemption failed.
    attr_accessor :failure_message

    attr_accessor :order

    attr_accessor :channel

    attr_accessor :customer

    # Defines the related object.
    attr_accessor :related_object_type

    attr_accessor :related_object_id

    attr_accessor :voucher

    attr_accessor :promotion_tier

    attr_accessor :reward

    attr_accessor :gift

    attr_accessor :loyalty_card

    # System generated cause for the redemption being invalid in the context of the provided parameters.
    attr_accessor :reason

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'object' => :'object',
        :'date' => :'date',
        :'customer_id' => :'customer_id',
        :'tracking_id' => :'tracking_id',
        :'metadata' => :'metadata',
        :'amount' => :'amount',
        :'redemption' => :'redemption',
        :'result' => :'result',
        :'status' => :'status',
        :'related_redemptions' => :'related_redemptions',
        :'failure_code' => :'failure_code',
        :'failure_message' => :'failure_message',
        :'order' => :'order',
        :'channel' => :'channel',
        :'customer' => :'customer',
        :'related_object_type' => :'related_object_type',
        :'related_object_id' => :'related_object_id',
        :'voucher' => :'voucher',
        :'promotion_tier' => :'promotion_tier',
        :'reward' => :'reward',
        :'gift' => :'gift',
        :'loyalty_card' => :'loyalty_card',
        :'reason' => :'reason'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'object' => :'String',
        :'date' => :'Time',
        :'customer_id' => :'String',
        :'tracking_id' => :'String',
        :'metadata' => :'Object',
        :'amount' => :'Integer',
        :'redemption' => :'String',
        :'result' => :'String',
        :'status' => :'String',
        :'related_redemptions' => :'RedemptionsListResponseBodyRedemptionsItemRelatedRedemptions',
        :'failure_code' => :'String',
        :'failure_message' => :'String',
        :'order' => :'RedemptionsListResponseBodyRedemptionsItemOrder',
        :'channel' => :'RedemptionsListResponseBodyRedemptionsItemChannel',
        :'customer' => :'RedemptionsListResponseBodyRedemptionsItemCustomer',
        :'related_object_type' => :'String',
        :'related_object_id' => :'String',
        :'voucher' => :'RedemptionsListResponseBodyRedemptionsItemVoucher',
        :'promotion_tier' => :'RedemptionsListResponseBodyRedemptionsItemPromotionTier',
        :'reward' => :'RedemptionRewardResult',
        :'gift' => :'RedemptionsListResponseBodyRedemptionsItemGift',
        :'loyalty_card' => :'RedemptionsListResponseBodyRedemptionsItemLoyaltyCard',
        :'reason' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'date',
        :'customer_id',
        :'tracking_id',
        :'redemption',
        :'result',
        :'failure_code',
        :'failure_message',
        :'related_object_type',
        :'reason'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'tracking_id')
        self.tracking_id = attributes[:'tracking_id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'redemption')
        self.redemption = attributes[:'redemption']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'related_redemptions')
        self.related_redemptions = attributes[:'related_redemptions']
      end

      if attributes.key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.key?(:'failure_message')
        self.failure_message = attributes[:'failure_message']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'related_object_type')
        self.related_object_type = attributes[:'related_object_type']
      end

      if attributes.key?(:'related_object_id')
        self.related_object_id = attributes[:'related_object_id']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'promotion_tier')
        self.promotion_tier = attributes[:'promotion_tier']
      end

      if attributes.key?(:'reward')
        self.reward = attributes[:'reward']
      end

      if attributes.key?(:'gift')
        self.gift = attributes[:'gift']
      end

      if attributes.key?(:'loyalty_card')
        self.loyalty_card = attributes[:'loyalty_card']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      object_validator = EnumAttributeValidator.new('String', ["redemption", "redemption_rollback"])
      return false unless object_validator.valid?(@object)
      result_validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
      return false unless result_validator.valid?(@result)
      status_validator = EnumAttributeValidator.new('String', ["SUCCEEDED", "FAILED", "ROLLED_BACK"])
      return false unless status_validator.valid?(@status)
      related_object_type_validator = EnumAttributeValidator.new('String', ["voucher", "promotion_tier", "redemption"])
      return false unless related_object_type_validator.valid?(@related_object_type)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          object == o.object &&
          date == o.date &&
          customer_id == o.customer_id &&
          tracking_id == o.tracking_id &&
          metadata == o.metadata &&
          amount == o.amount &&
          redemption == o.redemption &&
          result == o.result &&
          status == o.status &&
          related_redemptions == o.related_redemptions &&
          failure_code == o.failure_code &&
          failure_message == o.failure_message &&
          order == o.order &&
          channel == o.channel &&
          customer == o.customer &&
          related_object_type == o.related_object_type &&
          related_object_id == o.related_object_id &&
          voucher == o.voucher &&
          promotion_tier == o.promotion_tier &&
          reward == o.reward &&
          gift == o.gift &&
          loyalty_card == o.loyalty_card &&
          reason == o.reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object, date, customer_id, tracking_id, metadata, amount, redemption, result, status, related_redemptions, failure_code, failure_message, order, channel, customer, related_object_type, related_object_id, voucher, promotion_tier, reward, gift, loyalty_card, reason].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = VoucherifySdk.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
