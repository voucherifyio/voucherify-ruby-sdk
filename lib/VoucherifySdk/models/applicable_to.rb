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
  class ApplicableTo
    # This object stores information about the product collection.
    attr_accessor :object

    # Unique product collection ID assigned by Voucherify.
    attr_accessor :id

    # The source ID from your inventory system.
    attr_accessor :source_id

    # Parent product's unique ID assigned by Voucherify.
    attr_accessor :product_id

    # Parent product's source ID from your inventory system.
    attr_accessor :product_source_id

    attr_accessor :strict

    # New fixed price of an item. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $10 price is written as 1000. In case of the fixed price being calculated by the formula, i.e. the price_formula parameter is present in the fixed price definition, this value becomes the fallback value. Such that in a case where the formula cannot be calculated due to missing metadata, for example, this value will be used as the fixed price.
    attr_accessor :price

    # Formula used to calculate the discounted price of an item.
    attr_accessor :price_formula

    attr_accessor :effect

    # The maximum number of units allowed to be discounted per order line item.
    attr_accessor :quantity_limit

    # The maximum number of units allowed to be discounted combined across all matched order line items.
    attr_accessor :aggregated_quantity_limit

    # Upper limit allowed to be applied as a discount per order line item. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $6 maximum discount is written as 600.
    attr_accessor :amount_limit

    # Maximum discount amount per order. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $6 maximum discount on the entire order is written as 600. This value is definable for the following discount effects: - `APPLY_TO_ITEMS` (each item subtotal is discounted equally) - `APPLY_TO_ITEMS_BY_QUANTITY` (each unit of matched products has the same discount value)
    attr_accessor :aggregated_amount_limit

    attr_accessor :order_item_indices

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
        :'object' => :'object',
        :'id' => :'id',
        :'source_id' => :'source_id',
        :'product_id' => :'product_id',
        :'product_source_id' => :'product_source_id',
        :'strict' => :'strict',
        :'price' => :'price',
        :'price_formula' => :'price_formula',
        :'effect' => :'effect',
        :'quantity_limit' => :'quantity_limit',
        :'aggregated_quantity_limit' => :'aggregated_quantity_limit',
        :'amount_limit' => :'amount_limit',
        :'aggregated_amount_limit' => :'aggregated_amount_limit',
        :'order_item_indices' => :'order_item_indices'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'id' => :'String',
        :'source_id' => :'String',
        :'product_id' => :'String',
        :'product_source_id' => :'String',
        :'strict' => :'Boolean',
        :'price' => :'Float',
        :'price_formula' => :'Float',
        :'effect' => :'ApplicableToEffect',
        :'quantity_limit' => :'Integer',
        :'aggregated_quantity_limit' => :'Integer',
        :'amount_limit' => :'Integer',
        :'aggregated_amount_limit' => :'Integer',
        :'order_item_indices' => :'Array<Integer>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'object',
        :'id',
        :'source_id',
        :'product_id',
        :'product_source_id',
        :'strict',
        :'price',
        :'price_formula',
        :'quantity_limit',
        :'aggregated_quantity_limit',
        :'amount_limit',
        :'aggregated_amount_limit',
        :'order_item_indices'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::ApplicableTo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::ApplicableTo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'product_source_id')
        self.product_source_id = attributes[:'product_source_id']
      end

      if attributes.key?(:'strict')
        self.strict = attributes[:'strict']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'price_formula')
        self.price_formula = attributes[:'price_formula']
      end

      if attributes.key?(:'effect')
        self.effect = attributes[:'effect']
      else
        self.effect = nil
      end

      if attributes.key?(:'quantity_limit')
        self.quantity_limit = attributes[:'quantity_limit']
      end

      if attributes.key?(:'aggregated_quantity_limit')
        self.aggregated_quantity_limit = attributes[:'aggregated_quantity_limit']
      end

      if attributes.key?(:'amount_limit')
        self.amount_limit = attributes[:'amount_limit']
      end

      if attributes.key?(:'aggregated_amount_limit')
        self.aggregated_amount_limit = attributes[:'aggregated_amount_limit']
      end

      if attributes.key?(:'order_item_indices')
        if (value = attributes[:'order_item_indices']).is_a?(Array)
          self.order_item_indices = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @effect.nil?
        invalid_properties.push('invalid value for "effect", effect cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      object_validator = EnumAttributeValidator.new('String', ["product", "sku", "products_collection"])
      return false unless object_validator.valid?(@object)
      return false if @effect.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["product", "sku", "products_collection"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          source_id == o.source_id &&
          product_id == o.product_id &&
          product_source_id == o.product_source_id &&
          strict == o.strict &&
          price == o.price &&
          price_formula == o.price_formula &&
          effect == o.effect &&
          quantity_limit == o.quantity_limit &&
          aggregated_quantity_limit == o.aggregated_quantity_limit &&
          amount_limit == o.amount_limit &&
          aggregated_amount_limit == o.aggregated_amount_limit &&
          order_item_indices == o.order_item_indices
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, source_id, product_id, product_source_id, strict, price, price_formula, effect, quantity_limit, aggregated_quantity_limit, amount_limit, aggregated_amount_limit, order_item_indices].hash
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
