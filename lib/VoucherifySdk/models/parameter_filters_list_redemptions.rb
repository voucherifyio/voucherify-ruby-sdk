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
  class ParameterFiltersListRedemptions
    attr_accessor :voucher_code

    attr_accessor :related_object_id

    attr_accessor :related_object_parent_id

    attr_accessor :parent_redemption_id

    attr_accessor :failure_code

    attr_accessor :result

    attr_accessor :object

    attr_accessor :customer_id

    attr_accessor :campaign_name

    attr_accessor :user_login

    attr_accessor :junction

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
        :'voucher_code' => :'voucher_code',
        :'related_object_id' => :'related_object_id',
        :'related_object_parent_id' => :'related_object_parent_id',
        :'parent_redemption_id' => :'parent_redemption_id',
        :'failure_code' => :'failure_code',
        :'result' => :'result',
        :'object' => :'object',
        :'customer_id' => :'customer_id',
        :'campaign_name' => :'campaign_name',
        :'user_login' => :'user_login',
        :'junction' => :'junction'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'voucher_code' => :'ParameterFiltersListRedemptionsVoucherCode',
        :'related_object_id' => :'ParameterFiltersListRedemptionsRelatedObjectId',
        :'related_object_parent_id' => :'ParameterFiltersListRedemptionsRelatedObjectParentId',
        :'parent_redemption_id' => :'ParameterFiltersListRedemptionsParentRedemptionId',
        :'failure_code' => :'ParameterFiltersListRedemptionsFailureCode',
        :'result' => :'ParameterFiltersListRedemptionsResult',
        :'object' => :'ParameterFiltersListRedemptionsObject',
        :'customer_id' => :'ParameterFiltersListRedemptionsCustomerId',
        :'campaign_name' => :'ParameterFiltersListRedemptionsCampaignName',
        :'user_login' => :'ParameterFiltersListRedemptionsUserLogin',
        :'junction' => :'Junction'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'voucher_code',
        :'related_object_id',
        :'related_object_parent_id',
        :'parent_redemption_id',
        :'failure_code',
        :'result',
        :'object',
        :'customer_id',
        :'campaign_name',
        :'user_login',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'voucher_code')
        self.voucher_code = attributes[:'voucher_code']
      end

      if attributes.key?(:'related_object_id')
        self.related_object_id = attributes[:'related_object_id']
      end

      if attributes.key?(:'related_object_parent_id')
        self.related_object_parent_id = attributes[:'related_object_parent_id']
      end

      if attributes.key?(:'parent_redemption_id')
        self.parent_redemption_id = attributes[:'parent_redemption_id']
      end

      if attributes.key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'campaign_name')
        self.campaign_name = attributes[:'campaign_name']
      end

      if attributes.key?(:'user_login')
        self.user_login = attributes[:'user_login']
      end

      if attributes.key?(:'junction')
        self.junction = attributes[:'junction']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          voucher_code == o.voucher_code &&
          related_object_id == o.related_object_id &&
          related_object_parent_id == o.related_object_parent_id &&
          parent_redemption_id == o.parent_redemption_id &&
          failure_code == o.failure_code &&
          result == o.result &&
          object == o.object &&
          customer_id == o.customer_id &&
          campaign_name == o.campaign_name &&
          user_login == o.user_login &&
          junction == o.junction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [voucher_code, related_object_id, related_object_parent_id, parent_redemption_id, failure_code, result, object, customer_id, campaign_name, user_login, junction].hash
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
