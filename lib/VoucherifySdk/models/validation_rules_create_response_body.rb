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
  # Response body schema for **POST** `v1/validation-rules`.
  class ValidationRulesCreateResponseBody
    # Custom, unique name for set of validation rules.
    attr_accessor :name

    # Contains all the rule definitions for the validation rule. It is a set of key value pairs representing the rules and logic between the rules. The keys are numbered consecutively beginning from `1`. The values are objects containing the rule conditions.
    attr_accessor :rules

    attr_accessor :error

    attr_accessor :applicable_to

    # Type of validation rule.
    attr_accessor :type

    # Validation rule context type.    | **Context Type** | **Definition** | |:---|:---| | earning_rule.order.paid |  | | earning_rule.custom_event |  | | earning_rule.customer.segment.entered |  | | campaign.discount_coupons |  | | campaign.discount_coupons.discount.apply_to_order |  | | campaign.discount_coupons.discount.apply_to_items |  | | campaign.discount_coupons.discount.apply_to_items_proportionally |  | | campaign.discount_coupons.discount.apply_to_items_proportionally_by_quantity |  | | campaign.discount_coupons.discount.fixed.apply_to_items |  | | campaign.gift_vouchers |  | | campaign.gift_vouchers.gift.apply_to_order |  | | campaign.gift_vouchers.gift.apply_to_items |  | | campaign.referral_program |  | | campaign.referral_program.discount.apply_to_order |  | | campaign.referral_program.discount.apply_to_items |  | | campaign.referral_program.discount.apply_to_items_proportionally |  | | campaign.referral_program.discount.apply_to_items_proportionally_by_quantity |  | | campaign.referral_program.discount.fixed.apply_to_items |  | | campaign.promotion |  | | campaign.promotion.discount.apply_to_order |  | | campaign.promotion.discount.apply_to_items |  | | campaign.promotion.discount.apply_to_items_proportionally |  | | campaign.promotion.discount.apply_to_items_proportionally_by_quantity |  | | campaign.promotion.discount.fixed.apply_to_items |  | | campaign.loyalty_program |  | | voucher.discount_voucher |  | | voucher.discount_voucher.discount.apply_to_order |  | | voucher.discount_voucher.discount.apply_to_items |  | | voucher.discount_voucher.discount.apply_to_items_proportionally |  | | voucher.discount_voucher.discount.apply_to_items_proportionally_by_quantity |  | | voucher.discount_voucher.discount.fixed.apply_to_items |  | | voucher.gift_voucher |  | | voucher.gift_voucher.gift.apply_to_order |  | | voucher.gift_voucher.gift.apply_to_items |  | | voucher.loyalty_card |  | | distribution.custom_event |  | | reward_assignment.pay_with_points |  | | global |  |
    attr_accessor :context_type

    # Unique validation rule ID.
    attr_accessor :id

    # Timestamp representing the date and time when the validation rule was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the validation rule was updated. The value is shown in the ISO 8601 format.
    attr_accessor :updated_at

    # The number of instances the validation rule has been assigned to different types of redeemables.
    attr_accessor :assignments_count

    # The type of the object represented by JSON. This object stores information about the validation rule.
    attr_accessor :object

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
        :'name' => :'name',
        :'rules' => :'rules',
        :'error' => :'error',
        :'applicable_to' => :'applicable_to',
        :'type' => :'type',
        :'context_type' => :'context_type',
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'assignments_count' => :'assignments_count',
        :'object' => :'object'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'rules' => :'Object',
        :'error' => :'ValidationRulesCreateResponseBodyError',
        :'applicable_to' => :'ValidationRulesCreateResponseBodyApplicableTo',
        :'type' => :'String',
        :'context_type' => :'String',
        :'id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'assignments_count' => :'Integer',
        :'object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'error',
        :'applicable_to',
        :'type',
        :'context_type',
        :'id',
        :'created_at',
        :'updated_at',
        :'assignments_count',
        :'object'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rules')
        self.rules = attributes[:'rules']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'applicable_to')
        self.applicable_to = attributes[:'applicable_to']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'expression'
      end

      if attributes.key?(:'context_type')
        self.context_type = attributes[:'context_type']
      else
        self.context_type = 'global'
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'assignments_count')
        self.assignments_count = attributes[:'assignments_count']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'validation_rules'
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
      type_validator = EnumAttributeValidator.new('String', ["expression", "basic", "advanced", "complex"])
      return false unless type_validator.valid?(@type)
      context_type_validator = EnumAttributeValidator.new('String', ["earning_rule.order.paid", "earning_rule.custom_event", "earning_rule.customer.segment.entered", "earning_rule.customer.tier.joined", "earning_rule.customer.tier.left", "earning_rule.customer.tier.upgraded", "earning_rule.customer.tier.downgraded", "earning_rule.customer.tier.prolonged", "campaign.discount_coupons", "campaign.discount_coupons.discount.apply_to_order", "campaign.discount_coupons.discount.apply_to_items", "campaign.discount_coupons.discount.apply_to_items_proportionally", "campaign.discount_coupons.discount.apply_to_items_proportionally_by_quantity", "campaign.discount_coupons.discount.apply_to_items_by_quantity", "campaign.discount_coupons.discount.fixed.apply_to_items", "campaign.discount_coupons.discount.percent.apply_to_items", "campaign.gift_vouchers", "campaign.gift_vouchers.gift.apply_to_order", "campaign.gift_vouchers.gift.apply_to_items", "campaign.referral_program", "campaign.referral_program.discount.apply_to_order", "campaign.referral_program.discount.apply_to_items", "campaign.referral_program.discount.apply_to_items_proportionally", "campaign.referral_program.discount.apply_to_items_proportionally_by_quantity", "campaign.referral_program.discount.apply_to_items_by_quantity", "campaign.referral_program.discount.fixed.apply_to_items", "campaign.referral_program.discount.percent.apply_to_items", "campaign.promotion", "campaign.promotion.discount.apply_to_order", "campaign.promotion.discount.apply_to_items", "campaign.promotion.discount.apply_to_items_proportionally", "campaign.promotion.discount.apply_to_items_proportionally_by_quantity", "campaign.promotion.discount.apply_to_items_by_quantity", "campaign.promotion.discount.fixed.apply_to_items", "campaign.promotion.discount.percent.apply_to_items", "campaign.loyalty_program", "voucher.discount_voucher", "voucher.discount_voucher.discount.apply_to_order", "voucher.discount_voucher.discount.apply_to_items", "voucher.discount_voucher.discount.apply_to_items_proportionally", "voucher.discount_voucher.discount.apply_to_items_proportionally_by_quantity", "voucher.discount_voucher.discount.apply_to_items_by_quantity", "voucher.discount_voucher.discount.fixed.apply_to_items", "voucher.discount_voucher.discount.percent.apply_to_items", "voucher.gift_voucher", "voucher.gift_voucher.gift.apply_to_order", "voucher.gift_voucher.gift.apply_to_items", "voucher.loyalty_card", "distribution.custom_event", "distribution.order.paid", "distribution.order.created", "distribution.order.canceled", "distribution.order.updated", "reward_assignment.pay_with_points", "global"])
      return false unless context_type_validator.valid?(@context_type)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          rules == o.rules &&
          error == o.error &&
          applicable_to == o.applicable_to &&
          type == o.type &&
          context_type == o.context_type &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          assignments_count == o.assignments_count &&
          object == o.object
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, rules, error, applicable_to, type, context_type, id, created_at, updated_at, assignments_count, object].hash
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
