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
  class OrderItem
    # Unique identifier of the SKU. It is assigned by Voucherify.
    attr_accessor :sku_id

    # Unique identifier of the product. It is assigned by Voucherify.
    attr_accessor :product_id

    # Used along with the source_id property, can be set to either sku or product.
    attr_accessor :related_object

    # The merchant's product/SKU ID (if it is different from the Voucherify product/SKU ID). It is useful in the integration between multiple systems. It can be an ID from an eCommerce site, a database, or a third-party service.
    attr_accessor :source_id

    # The quantity of the particular item in the cart.
    attr_accessor :quantity

    # Number of dicounted items.
    attr_accessor :discount_quantity

    # A positive integer in the smallest unit quantity representing the total amount of the order; this is the sum of the order items' quantity.
    attr_accessor :initial_quantity

    # The total amount of the order item (price * quantity).
    attr_accessor :amount

    # Sum of all order-item-level discounts applied to the order.
    attr_accessor :discount_amount

    # A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items' amounts.
    attr_accessor :initial_amount

    # Unit price of an item. Value is multiplied by 100 to precisely represent 2 decimal places. For example `10000 cents` for `$100.00`.
    attr_accessor :price

    attr_accessor :product

    attr_accessor :sku

    # A set of custom key/value pairs that you can attach to an order item. It can be useful for storing additional information about the order item in a structured format.
    attr_accessor :metadata

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
        :'sku_id' => :'sku_id',
        :'product_id' => :'product_id',
        :'related_object' => :'related_object',
        :'source_id' => :'source_id',
        :'quantity' => :'quantity',
        :'discount_quantity' => :'discount_quantity',
        :'initial_quantity' => :'initial_quantity',
        :'amount' => :'amount',
        :'discount_amount' => :'discount_amount',
        :'initial_amount' => :'initial_amount',
        :'price' => :'price',
        :'product' => :'product',
        :'sku' => :'sku',
        :'metadata' => :'metadata'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sku_id' => :'String',
        :'product_id' => :'String',
        :'related_object' => :'String',
        :'source_id' => :'String',
        :'quantity' => :'Integer',
        :'discount_quantity' => :'Integer',
        :'initial_quantity' => :'Integer',
        :'amount' => :'Integer',
        :'discount_amount' => :'Integer',
        :'initial_amount' => :'Integer',
        :'price' => :'Integer',
        :'product' => :'OrderItemProduct',
        :'sku' => :'OrderItemSku',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'sku_id',
        :'product_id',
        :'related_object',
        :'source_id',
        :'quantity',
        :'discount_quantity',
        :'initial_quantity',
        :'amount',
        :'discount_amount',
        :'initial_amount',
        :'price',
        :'product',
        :'sku',
        :'metadata'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'sku_id')
        self.sku_id = attributes[:'sku_id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'related_object')
        self.related_object = attributes[:'related_object']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'discount_quantity')
        self.discount_quantity = attributes[:'discount_quantity']
      end

      if attributes.key?(:'initial_quantity')
        self.initial_quantity = attributes[:'initial_quantity']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'discount_amount')
        self.discount_amount = attributes[:'discount_amount']
      end

      if attributes.key?(:'initial_amount')
        self.initial_amount = attributes[:'initial_amount']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
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
      related_object_validator = EnumAttributeValidator.new('String', ["product", "sku"])
      return false unless related_object_validator.valid?(@related_object)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sku_id == o.sku_id &&
          product_id == o.product_id &&
          related_object == o.related_object &&
          source_id == o.source_id &&
          quantity == o.quantity &&
          discount_quantity == o.discount_quantity &&
          initial_quantity == o.initial_quantity &&
          amount == o.amount &&
          discount_amount == o.discount_amount &&
          initial_amount == o.initial_amount &&
          price == o.price &&
          product == o.product &&
          sku == o.sku &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sku_id, product_id, related_object, source_id, quantity, discount_quantity, initial_quantity, amount, discount_amount, initial_amount, price, product, sku, metadata].hash
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
