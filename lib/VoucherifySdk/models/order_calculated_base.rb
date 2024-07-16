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
  # Order information.
  class OrderCalculatedBase
    # Unique ID assigned by Voucherify of an existing order that will be linked to the redemption of this request.
    attr_accessor :id

    # Unique source ID of an existing order that will be linked to the redemption of this request.
    attr_accessor :source_id

    # Timestamp representing the date and time when the order was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the order was last updated in ISO 8601 format.
    attr_accessor :updated_at

    # The order status.
    attr_accessor :status

    # A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items' amounts.
    attr_accessor :amount

    # A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items' amounts.
    attr_accessor :initial_amount

    # Sum of all order-level discounts applied to the order.
    attr_accessor :discount_amount

    # Sum of all product-specific discounts applied to the order.
    attr_accessor :items_discount_amount

    # Sum of all order-level AND all product-specific discounts applied to the order.
    attr_accessor :total_discount_amount

    # Order amount after undoing all the discounts through the rollback redemption.
    attr_accessor :total_amount

    # This field shows the order-level discount applied.
    attr_accessor :applied_discount_amount

    # Sum of all product-specific discounts applied in a particular request.   `sum(items, i => i.applied_discount_amount)`
    attr_accessor :items_applied_discount_amount

    # Sum of all order-level AND all product-specific discounts applied in a particular request.   `total_applied_discount_amount` = `applied_discount_amount` + `items_applied_discount_amount`
    attr_accessor :total_applied_discount_amount

    # Array of items applied to the order.
    attr_accessor :items

    # A set of custom key/value pairs that you can attach to an order. It can be useful for storing additional information about the order in a structured format.
    attr_accessor :metadata

    # Unique customer ID of the customer making the purchase.
    attr_accessor :customer_id

    # Unique referrer ID.
    attr_accessor :referrer_id

    # The type of the object represented by JSON.
    attr_accessor :object

    attr_accessor :redemptions

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
        :'source_id' => :'source_id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'status' => :'status',
        :'amount' => :'amount',
        :'initial_amount' => :'initial_amount',
        :'discount_amount' => :'discount_amount',
        :'items_discount_amount' => :'items_discount_amount',
        :'total_discount_amount' => :'total_discount_amount',
        :'total_amount' => :'total_amount',
        :'applied_discount_amount' => :'applied_discount_amount',
        :'items_applied_discount_amount' => :'items_applied_discount_amount',
        :'total_applied_discount_amount' => :'total_applied_discount_amount',
        :'items' => :'items',
        :'metadata' => :'metadata',
        :'customer_id' => :'customer_id',
        :'referrer_id' => :'referrer_id',
        :'object' => :'object',
        :'redemptions' => :'redemptions'
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
        :'source_id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'status' => :'String',
        :'amount' => :'Integer',
        :'initial_amount' => :'Integer',
        :'discount_amount' => :'Integer',
        :'items_discount_amount' => :'Integer',
        :'total_discount_amount' => :'Integer',
        :'total_amount' => :'Integer',
        :'applied_discount_amount' => :'Integer',
        :'items_applied_discount_amount' => :'Integer',
        :'total_applied_discount_amount' => :'Integer',
        :'items' => :'Array<OrderItemCalculated>',
        :'metadata' => :'Object',
        :'customer_id' => :'String',
        :'referrer_id' => :'String',
        :'object' => :'String',
        :'redemptions' => :'Hash<String, OrderRedemptions>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'source_id',
        :'created_at',
        :'updated_at',
        :'status',
        :'amount',
        :'initial_amount',
        :'discount_amount',
        :'items_discount_amount',
        :'total_discount_amount',
        :'total_amount',
        :'applied_discount_amount',
        :'items_applied_discount_amount',
        :'total_applied_discount_amount',
        :'items',
        :'metadata',
        :'customer_id',
        :'referrer_id',
        :'object',
        :'redemptions'
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

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'initial_amount')
        self.initial_amount = attributes[:'initial_amount']
      end

      if attributes.key?(:'discount_amount')
        self.discount_amount = attributes[:'discount_amount']
      end

      if attributes.key?(:'items_discount_amount')
        self.items_discount_amount = attributes[:'items_discount_amount']
      end

      if attributes.key?(:'total_discount_amount')
        self.total_discount_amount = attributes[:'total_discount_amount']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'applied_discount_amount')
        self.applied_discount_amount = attributes[:'applied_discount_amount']
      end

      if attributes.key?(:'items_applied_discount_amount')
        self.items_applied_discount_amount = attributes[:'items_applied_discount_amount']
      end

      if attributes.key?(:'total_applied_discount_amount')
        self.total_applied_discount_amount = attributes[:'total_applied_discount_amount']
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'referrer_id')
        self.referrer_id = attributes[:'referrer_id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'order'
      end

      if attributes.key?(:'redemptions')
        if (value = attributes[:'redemptions']).is_a?(Hash)
          self.redemptions = value
        end
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
      status_validator = EnumAttributeValidator.new('String', ["CREATED", "PAID", "CANCELED", "FULFILLED"])
      return false unless status_validator.valid?(@status)
      object_validator = EnumAttributeValidator.new('String', ["order"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          source_id == o.source_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          status == o.status &&
          amount == o.amount &&
          initial_amount == o.initial_amount &&
          discount_amount == o.discount_amount &&
          items_discount_amount == o.items_discount_amount &&
          total_discount_amount == o.total_discount_amount &&
          total_amount == o.total_amount &&
          applied_discount_amount == o.applied_discount_amount &&
          items_applied_discount_amount == o.items_applied_discount_amount &&
          total_applied_discount_amount == o.total_applied_discount_amount &&
          items == o.items &&
          metadata == o.metadata &&
          customer_id == o.customer_id &&
          referrer_id == o.referrer_id &&
          object == o.object &&
          redemptions == o.redemptions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, source_id, created_at, updated_at, status, amount, initial_amount, discount_amount, items_discount_amount, total_discount_amount, total_amount, applied_discount_amount, items_applied_discount_amount, total_applied_discount_amount, items, metadata, customer_id, referrer_id, object, redemptions].hash
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
