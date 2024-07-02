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
  class CustomerWithSummaryLoyaltyReferrals
    # Customer's first and last name.
    attr_accessor :name

    # An arbitrary string that you can attach to a customer object.
    attr_accessor :description

    # Customer's email address.
    attr_accessor :email

    # Customer's phone number. This parameter is mandatory when you try to send out codes to customers via an SMS channel.
    attr_accessor :phone

    # `Deprecated`. ~~Customer's birthdate; format YYYY-MM-DD~~.
    attr_accessor :birthday

    # Customer's birthdate; format YYYY-MM-DD.
    attr_accessor :birthdate

    attr_accessor :address

    # A set of custom key/value pairs that you can attach to a customer. The metadata object stores all custom attributes assigned to the customer. It can be useful for storing additional information about the customer in a structured format. This metadata can be used for validating whether the customer qualifies for a discount or it can be used in building customer segments.
    attr_accessor :metadata

    # The ID of an existing customer that will be linked to redemption in this request.
    attr_accessor :id

    # A unique identifier of the customer who validates a voucher. It can be a customer ID or email from a CRM system, database, or a third-party service. If you also pass a customer ID (unique ID assigned by Voucherify), the source ID will be ignored.
    attr_accessor :source_id

    attr_accessor :summary

    attr_accessor :loyalty

    attr_accessor :referrals

    # Object used to store system metadata information.
    attr_accessor :system_metadata

    # Timestamp representing the date and time when the customer was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the customer was updated. The value is shown in the ISO 8601 format.
    attr_accessor :updated_at

    attr_accessor :assets

    # The type of the object represented by JSON.
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
        :'description' => :'description',
        :'email' => :'email',
        :'phone' => :'phone',
        :'birthday' => :'birthday',
        :'birthdate' => :'birthdate',
        :'address' => :'address',
        :'metadata' => :'metadata',
        :'id' => :'id',
        :'source_id' => :'source_id',
        :'summary' => :'summary',
        :'loyalty' => :'loyalty',
        :'referrals' => :'referrals',
        :'system_metadata' => :'system_metadata',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'assets' => :'assets',
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
        :'description' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'birthday' => :'Date',
        :'birthdate' => :'Date',
        :'address' => :'CustomerBaseAddress',
        :'metadata' => :'Object',
        :'id' => :'String',
        :'source_id' => :'String',
        :'summary' => :'CustomerSummary',
        :'loyalty' => :'CustomerLoyalty',
        :'referrals' => :'CustomerReferrals',
        :'system_metadata' => :'Object',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'assets' => :'CustomerResponseDataAssets',
        :'object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'address',
        :'summary',
        :'loyalty',
        :'referrals',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CustomerBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::CustomerWithSummaryLoyaltyReferrals` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::CustomerWithSummaryLoyaltyReferrals`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.key?(:'birthdate')
        self.birthdate = attributes[:'birthdate']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'source_id')
        self.source_id = attributes[:'source_id']
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      else
        self.summary = nil
      end

      if attributes.key?(:'loyalty')
        self.loyalty = attributes[:'loyalty']
      else
        self.loyalty = nil
      end

      if attributes.key?(:'referrals')
        self.referrals = attributes[:'referrals']
      else
        self.referrals = nil
      end

      if attributes.key?(:'system_metadata')
        self.system_metadata = attributes[:'system_metadata']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'assets')
        self.assets = attributes[:'assets']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'customer'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["customer"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["customer"])
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
          name == o.name &&
          description == o.description &&
          email == o.email &&
          phone == o.phone &&
          birthday == o.birthday &&
          birthdate == o.birthdate &&
          address == o.address &&
          metadata == o.metadata &&
          id == o.id &&
          source_id == o.source_id &&
          summary == o.summary &&
          loyalty == o.loyalty &&
          referrals == o.referrals &&
          system_metadata == o.system_metadata &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          assets == o.assets &&
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
      [name, description, email, phone, birthday, birthdate, address, metadata, id, source_id, summary, loyalty, referrals, system_metadata, created_at, updated_at, assets, object].hash
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
