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
  # Simplified campaign data.
  class SimpleCampaign
    # Campaign ID.
    attr_accessor :id

    # Campaign name.
    attr_accessor :name

    # Type of campaign.
    attr_accessor :campaign_type

    # Defines whether the campaign can be updated with new vouchers after campaign creation. - `AUTO_UPDATE`: By choosing the auto update option you will create a campaign that can be enhanced by new vouchers after the time of creation (e.g. by publish vouchers method). -  `STATIC`: vouchers need to be manually published.
    attr_accessor :type

    # Flag indicating whether this voucher is a referral code; `true` for campaign type `REFERRAL_PROGRAM`.
    attr_accessor :is_referral_code

    attr_accessor :voucher

    attr_accessor :lucky_draw

    attr_accessor :referral_program

    # Indicates whether customers will be able to auto-join the campaign if any earning rule is fulfilled.
    attr_accessor :auto_join

    # If this value is set to `true`, customers will be able to join the campaign only once.
    attr_accessor :join_once

    # Indicates whether the campaign is active.
    attr_accessor :active

    # Unique category name.
    attr_accessor :category

    # The unique category ID that this campaign belongs to.
    attr_accessor :category_id

    # Contains details about the category.
    attr_accessor :categories

    # A set of custom key/value pairs that you can attach to a campaign. The metadata object stores all custom attributes assigned to the campaign.
    attr_accessor :metadata

    # Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is inactive *before* this date. 
    attr_accessor :start_date

    # Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is inactive *after* this date.
    attr_accessor :expiration_date

    # An optional field to keep extra textual information about the campaign such as a campaign description and details.
    attr_accessor :description

    # Timestamp representing the date and time when the campaign was created. Timestamp is presented in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the campaign was updated in the ISO 8601 format.
    attr_accessor :updated_at

    # The type of the object represented by JSON. This object stores information about the campaign.
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
        :'id' => :'id',
        :'name' => :'name',
        :'campaign_type' => :'campaign_type',
        :'type' => :'type',
        :'is_referral_code' => :'is_referral_code',
        :'voucher' => :'voucher',
        :'lucky_draw' => :'lucky_draw',
        :'referral_program' => :'referral_program',
        :'auto_join' => :'auto_join',
        :'join_once' => :'join_once',
        :'active' => :'active',
        :'category' => :'category',
        :'category_id' => :'category_id',
        :'categories' => :'categories',
        :'metadata' => :'metadata',
        :'start_date' => :'start_date',
        :'expiration_date' => :'expiration_date',
        :'description' => :'description',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
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
        :'id' => :'String',
        :'name' => :'String',
        :'campaign_type' => :'String',
        :'type' => :'String',
        :'is_referral_code' => :'Boolean',
        :'voucher' => :'SimpleCampaignVoucher',
        :'lucky_draw' => :'LuckyDraw',
        :'referral_program' => :'ReferralProgram',
        :'auto_join' => :'Boolean',
        :'join_once' => :'Boolean',
        :'active' => :'Boolean',
        :'category' => :'String',
        :'category_id' => :'String',
        :'categories' => :'Array<Category>',
        :'metadata' => :'Object',
        :'start_date' => :'Time',
        :'expiration_date' => :'Time',
        :'description' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'category_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::SimpleCampaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::SimpleCampaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'campaign_type')
        self.campaign_type = attributes[:'campaign_type']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'is_referral_code')
        self.is_referral_code = attributes[:'is_referral_code']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'lucky_draw')
        self.lucky_draw = attributes[:'lucky_draw']
      end

      if attributes.key?(:'referral_program')
        self.referral_program = attributes[:'referral_program']
      end

      if attributes.key?(:'auto_join')
        self.auto_join = attributes[:'auto_join']
      end

      if attributes.key?(:'join_once')
        self.join_once = attributes[:'join_once']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'campaign'
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
      type_validator = EnumAttributeValidator.new('String', ["AUTO_UPDATE", "STATIC"])
      return false unless type_validator.valid?(@type)
      object_validator = EnumAttributeValidator.new('String', ["campaign"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["AUTO_UPDATE", "STATIC"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["campaign"])
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
          id == o.id &&
          name == o.name &&
          campaign_type == o.campaign_type &&
          type == o.type &&
          is_referral_code == o.is_referral_code &&
          voucher == o.voucher &&
          lucky_draw == o.lucky_draw &&
          referral_program == o.referral_program &&
          auto_join == o.auto_join &&
          join_once == o.join_once &&
          active == o.active &&
          category == o.category &&
          category_id == o.category_id &&
          categories == o.categories &&
          metadata == o.metadata &&
          start_date == o.start_date &&
          expiration_date == o.expiration_date &&
          description == o.description &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
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
      [id, name, campaign_type, type, is_referral_code, voucher, lucky_draw, referral_program, auto_join, join_once, active, category, category_id, categories, metadata, start_date, expiration_date, description, created_at, updated_at, object].hash
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