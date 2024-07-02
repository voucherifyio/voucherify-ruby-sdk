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
  class RewardAssignment
    # Unique reward assignment ID, assigned by Voucherify.
    attr_accessor :id

    # Associated reward ID.
    attr_accessor :reward_id

    # Timestamp representing the date and time when the reward assignment was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the reward assignment was updated. The value is shown in the ISO 8601 format.
    attr_accessor :updated_at

    # The type of the object represented by the JSON. This object stores information about the reward assignment.
    attr_accessor :object

    # Related object ID to which the reward was assigned.
    attr_accessor :related_object_id

    # Related object type to which the reward was assigned.
    attr_accessor :related_object_type

    attr_accessor :parameters

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
        :'reward_id' => :'reward_id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'object' => :'object',
        :'related_object_id' => :'related_object_id',
        :'related_object_type' => :'related_object_type',
        :'parameters' => :'parameters'
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
        :'reward_id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'object' => :'String',
        :'related_object_id' => :'String',
        :'related_object_type' => :'String',
        :'parameters' => :'RewardAssignmentParametersParameters'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'updated_at',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'RewardAssignmentBase',
      :'RewardAssignmentParameters'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::RewardAssignment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::RewardAssignment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'reward_id')
        self.reward_id = attributes[:'reward_id']
      else
        self.reward_id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'reward_assignment'
      end

      if attributes.key?(:'related_object_id')
        self.related_object_id = attributes[:'related_object_id']
      else
        self.related_object_id = nil
      end

      if attributes.key?(:'related_object_type')
        self.related_object_type = attributes[:'related_object_type']
      else
        self.related_object_type = 'campaign'
      end

      if attributes.key?(:'parameters')
        self.parameters = attributes[:'parameters']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @reward_id.nil?
        invalid_properties.push('invalid value for "reward_id", reward_id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @related_object_id.nil?
        invalid_properties.push('invalid value for "related_object_id", related_object_id cannot be nil.')
      end

      if @related_object_type.nil?
        invalid_properties.push('invalid value for "related_object_type", related_object_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @reward_id.nil?
      return false if @created_at.nil?
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["reward_assignment"])
      return false unless object_validator.valid?(@object)
      return false if @related_object_id.nil?
      return false if @related_object_type.nil?
      related_object_type_validator = EnumAttributeValidator.new('String', ["campaign"])
      return false unless related_object_type_validator.valid?(@related_object_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["reward_assignment"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] related_object_type Object to be assigned
    def related_object_type=(related_object_type)
      validator = EnumAttributeValidator.new('String', ["campaign"])
      unless validator.valid?(related_object_type)
        fail ArgumentError, "invalid value for \"related_object_type\", must be one of #{validator.allowable_values}."
      end
      @related_object_type = related_object_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          reward_id == o.reward_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          object == o.object &&
          related_object_id == o.related_object_id &&
          related_object_type == o.related_object_type &&
          parameters == o.parameters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, reward_id, created_at, updated_at, object, related_object_id, related_object_type, parameters].hash
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
