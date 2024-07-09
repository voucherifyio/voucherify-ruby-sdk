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
  class OrderRedemptions
    # Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format.
    attr_accessor :date

    # Unique ID of the redemption rollback.
    attr_accessor :rollback_id

    # Timestamp representing the date and tiem when the redemption rollback was created. The value is shown in the ISO 8601 format.
    attr_accessor :rollback_date

    # The source of the incentive.
    attr_accessor :related_object_type

    # Unique ID of the parent redemption.
    attr_accessor :related_object_id

    # Represent's the campaign ID of the voucher if the redemption was based on a voucher that was part of bulk codes generated within a campaign. In case of a promotion tier, this represents the campaign ID of the promotion tier's parent campaign.
    attr_accessor :related_object_parent_id

    # Contains a list of unique IDs of child redemptions, which belong to the stacked incentives.
    attr_accessor :stacked

    # Lists the rollback redemption IDs of the particular child redemptions.
    attr_accessor :rollback_stacked

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'rollback_id' => :'rollback_id',
        :'rollback_date' => :'rollback_date',
        :'related_object_type' => :'related_object_type',
        :'related_object_id' => :'related_object_id',
        :'related_object_parent_id' => :'related_object_parent_id',
        :'stacked' => :'stacked',
        :'rollback_stacked' => :'rollback_stacked'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date' => :'Time',
        :'rollback_id' => :'String',
        :'rollback_date' => :'Time',
        :'related_object_type' => :'String',
        :'related_object_id' => :'String',
        :'related_object_parent_id' => :'String',
        :'stacked' => :'Array<String>',
        :'rollback_stacked' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'date',
        :'rollback_id',
        :'rollback_date',
        :'related_object_type',
        :'related_object_id',
        :'related_object_parent_id',
        :'stacked',
        :'rollback_stacked'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::OrderRedemptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::OrderRedemptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'rollback_id')
        self.rollback_id = attributes[:'rollback_id']
      end

      if attributes.key?(:'rollback_date')
        self.rollback_date = attributes[:'rollback_date']
      end

      if attributes.key?(:'related_object_type')
        self.related_object_type = attributes[:'related_object_type']
      else
        self.related_object_type = 'redemption'
      end

      if attributes.key?(:'related_object_id')
        self.related_object_id = attributes[:'related_object_id']
      end

      if attributes.key?(:'related_object_parent_id')
        self.related_object_parent_id = attributes[:'related_object_parent_id']
      end

      if attributes.key?(:'stacked')
        if (value = attributes[:'stacked']).is_a?(Array)
          self.stacked = value
        end
      end

      if attributes.key?(:'rollback_stacked')
        if (value = attributes[:'rollback_stacked']).is_a?(Array)
          self.rollback_stacked = value
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          rollback_id == o.rollback_id &&
          rollback_date == o.rollback_date &&
          related_object_type == o.related_object_type &&
          related_object_id == o.related_object_id &&
          related_object_parent_id == o.related_object_parent_id &&
          stacked == o.stacked &&
          rollback_stacked == o.rollback_stacked
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, rollback_id, rollback_date, related_object_type, related_object_id, related_object_parent_id, stacked, rollback_stacked].hash
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
