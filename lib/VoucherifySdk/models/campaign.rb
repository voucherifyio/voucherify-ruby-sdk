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
  class Campaign
    # Unique campaign ID, assigned by Voucherify.
    attr_accessor :id

    # Campaign name.
    attr_accessor :name

    # An optional field to keep any extra textual information about the campaign such as a campaign description and details.
    attr_accessor :description

    # Type of campaign.
    attr_accessor :campaign_type

    # Defines whether the campaign can be updated with new vouchers after campaign creation.      - `AUTO_UPDATE`: the campaign is dynamic, i.e. vouchers will generate based on set criteria     -  `STATIC`: vouchers need to be manually published
    attr_accessor :type

    attr_accessor :voucher

    # Indicates whether customers will be able to auto-join a loyalty campaign if any earning rule is fulfilled.
    attr_accessor :auto_join

    # If this value is set to `true`, customers will be able to join the campaign only once.
    attr_accessor :join_once

    # Flag indicating whether the campaign is to use the voucher's metadata schema instead of the campaign metadata schema.
    attr_accessor :use_voucher_metadata_schema

    attr_accessor :validity_timeframe

    # Integer array corresponding to the particular days of the week in which the campaign is valid.  - `0` Sunday - `1` Monday - `2` Tuesday - `3` Wednesday - `4` Thursday - `5` Friday - `6` Saturday
    attr_accessor :validity_day_of_week

    attr_accessor :validity_hours

    # Defines the amount of time the campaign will be active in ISO 8601 format after publishing. For example, a campaign with a `duration` of `P24D` will be valid for a duration of 24 days.
    attr_accessor :activity_duration_after_publishing

    # Total number of unique vouchers in campaign.
    attr_accessor :vouchers_count

    # Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is *inactive before* this date. 
    attr_accessor :start_date

    # Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is *inactive after* this date.
    attr_accessor :expiration_date

    # A flag to toggle the campaign on or off. You can disable a campaign even though it's within the active period defined by the `start_date` and `expiration_date`.    - `true` indicates an *active* campaign - `false` indicates an *inactive* campaign
    attr_accessor :active

    # The metadata object stores all custom attributes assigned to the campaign. A set of key/value pairs that you can attach to a campaign object. It can be useful for storing additional information about the campaign in a structured format.
    attr_accessor :metadata

    # Timestamp representing the date and time when the campaign was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the campaign was last updated in ISO 8601 format.
    attr_accessor :updated_at

    # Unique category name.
    attr_accessor :category

    # Indicates the status of the campaign creation.
    attr_accessor :creation_status

    # Indicates the status of the campaign's voucher generation.
    attr_accessor :vouchers_generation_status

    # Indicates whether the resource can be deleted.
    attr_accessor :protected

    # Unique category ID that this campaign belongs to.
    attr_accessor :category_id

    # Contains details about the category.
    attr_accessor :categories

    # The type of the object represented by JSON. This object stores information about the campaign.
    attr_accessor :object

    attr_accessor :referral_program

    attr_accessor :loyalty_tiers_expiration

    attr_accessor :promotion

    attr_accessor :validation_rules_assignments

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
        :'description' => :'description',
        :'campaign_type' => :'campaign_type',
        :'type' => :'type',
        :'voucher' => :'voucher',
        :'auto_join' => :'auto_join',
        :'join_once' => :'join_once',
        :'use_voucher_metadata_schema' => :'use_voucher_metadata_schema',
        :'validity_timeframe' => :'validity_timeframe',
        :'validity_day_of_week' => :'validity_day_of_week',
        :'validity_hours' => :'validity_hours',
        :'activity_duration_after_publishing' => :'activity_duration_after_publishing',
        :'vouchers_count' => :'vouchers_count',
        :'start_date' => :'start_date',
        :'expiration_date' => :'expiration_date',
        :'active' => :'active',
        :'metadata' => :'metadata',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'category' => :'category',
        :'creation_status' => :'creation_status',
        :'vouchers_generation_status' => :'vouchers_generation_status',
        :'protected' => :'protected',
        :'category_id' => :'category_id',
        :'categories' => :'categories',
        :'object' => :'object',
        :'referral_program' => :'referral_program',
        :'loyalty_tiers_expiration' => :'loyalty_tiers_expiration',
        :'promotion' => :'promotion',
        :'validation_rules_assignments' => :'validation_rules_assignments'
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
        :'description' => :'String',
        :'campaign_type' => :'String',
        :'type' => :'String',
        :'voucher' => :'CampaignVoucher',
        :'auto_join' => :'Boolean',
        :'join_once' => :'Boolean',
        :'use_voucher_metadata_schema' => :'Boolean',
        :'validity_timeframe' => :'CampaignBaseValidityTimeframe',
        :'validity_day_of_week' => :'Array<Integer>',
        :'validity_hours' => :'ValidityHours',
        :'activity_duration_after_publishing' => :'String',
        :'vouchers_count' => :'Integer',
        :'start_date' => :'Time',
        :'expiration_date' => :'Time',
        :'active' => :'Boolean',
        :'metadata' => :'Object',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'category' => :'String',
        :'creation_status' => :'String',
        :'vouchers_generation_status' => :'String',
        :'protected' => :'Boolean',
        :'category_id' => :'String',
        :'categories' => :'Array<Category>',
        :'object' => :'String',
        :'referral_program' => :'ReferralProgram',
        :'loyalty_tiers_expiration' => :'LoyaltyTiersExpirationAll',
        :'promotion' => :'PromotionTiersList',
        :'validation_rules_assignments' => :'ValidationRulesAssignmentsList'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'category_id',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CampaignBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VoucherifySdk::Campaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VoucherifySdk::Campaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'campaign_type')
        self.campaign_type = attributes[:'campaign_type']
      else
        self.campaign_type = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'auto_join')
        self.auto_join = attributes[:'auto_join']
      else
        self.auto_join = nil
      end

      if attributes.key?(:'join_once')
        self.join_once = attributes[:'join_once']
      else
        self.join_once = nil
      end

      if attributes.key?(:'use_voucher_metadata_schema')
        self.use_voucher_metadata_schema = attributes[:'use_voucher_metadata_schema']
      else
        self.use_voucher_metadata_schema = nil
      end

      if attributes.key?(:'validity_timeframe')
        self.validity_timeframe = attributes[:'validity_timeframe']
      end

      if attributes.key?(:'validity_day_of_week')
        if (value = attributes[:'validity_day_of_week']).is_a?(Array)
          self.validity_day_of_week = value
        end
      end

      if attributes.key?(:'validity_hours')
        self.validity_hours = attributes[:'validity_hours']
      end

      if attributes.key?(:'activity_duration_after_publishing')
        self.activity_duration_after_publishing = attributes[:'activity_duration_after_publishing']
      end

      if attributes.key?(:'vouchers_count')
        self.vouchers_count = attributes[:'vouchers_count']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'creation_status')
        self.creation_status = attributes[:'creation_status']
      else
        self.creation_status = nil
      end

      if attributes.key?(:'vouchers_generation_status')
        self.vouchers_generation_status = attributes[:'vouchers_generation_status']
      else
        self.vouchers_generation_status = nil
      end

      if attributes.key?(:'protected')
        self.protected = attributes[:'protected']
      else
        self.protected = nil
      end

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      else
        self.category_id = nil
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      else
        self.categories = nil
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'campaign'
      end

      if attributes.key?(:'referral_program')
        self.referral_program = attributes[:'referral_program']
      end

      if attributes.key?(:'loyalty_tiers_expiration')
        self.loyalty_tiers_expiration = attributes[:'loyalty_tiers_expiration']
      end

      if attributes.key?(:'promotion')
        self.promotion = attributes[:'promotion']
      end

      if attributes.key?(:'validation_rules_assignments')
        self.validation_rules_assignments = attributes[:'validation_rules_assignments']
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @campaign_type.nil?
        invalid_properties.push('invalid value for "campaign_type", campaign_type cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @auto_join.nil?
        invalid_properties.push('invalid value for "auto_join", auto_join cannot be nil.')
      end

      if @join_once.nil?
        invalid_properties.push('invalid value for "join_once", join_once cannot be nil.')
      end

      if @use_voucher_metadata_schema.nil?
        invalid_properties.push('invalid value for "use_voucher_metadata_schema", use_voucher_metadata_schema cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @creation_status.nil?
        invalid_properties.push('invalid value for "creation_status", creation_status cannot be nil.')
      end

      if @vouchers_generation_status.nil?
        invalid_properties.push('invalid value for "vouchers_generation_status", vouchers_generation_status cannot be nil.')
      end

      if @protected.nil?
        invalid_properties.push('invalid value for "protected", protected cannot be nil.')
      end

      if @categories.nil?
        invalid_properties.push('invalid value for "categories", categories cannot be nil.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @name.nil?
      return false if @campaign_type.nil?
      campaign_type_validator = EnumAttributeValidator.new('String', ["LOYALTY_PROGRAM", "GIFT_VOUCHERS", "DISCOUNT_COUPONS", "PROMOTION", "REFERRAL_PROGRAM", "LUCKY_DRAW"])
      return false unless campaign_type_validator.valid?(@campaign_type)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["AUTO_UPDATE", "STATIC"])
      return false unless type_validator.valid?(@type)
      return false if @auto_join.nil?
      return false if @join_once.nil?
      return false if @use_voucher_metadata_schema.nil?
      return false if @created_at.nil?
      return false if @creation_status.nil?
      creation_status_validator = EnumAttributeValidator.new('String', ["DONE", "IN_PROGRESS", "FAILED", "DRAFT", "MODIFYING"])
      return false unless creation_status_validator.valid?(@creation_status)
      return false if @vouchers_generation_status.nil?
      vouchers_generation_status_validator = EnumAttributeValidator.new('String', ["DONE", "IN_PROGRESS", "FAILED", "DRAFT", "MODIFYING"])
      return false unless vouchers_generation_status_validator.valid?(@vouchers_generation_status)
      return false if @protected.nil?
      return false if @categories.nil?
      return false if @object.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_type Object to be assigned
    def campaign_type=(campaign_type)
      validator = EnumAttributeValidator.new('String', ["LOYALTY_PROGRAM", "GIFT_VOUCHERS", "DISCOUNT_COUPONS", "PROMOTION", "REFERRAL_PROGRAM", "LUCKY_DRAW"])
      unless validator.valid?(campaign_type)
        fail ArgumentError, "invalid value for \"campaign_type\", must be one of #{validator.allowable_values}."
      end
      @campaign_type = campaign_type
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
    # @param [Object] creation_status Object to be assigned
    def creation_status=(creation_status)
      validator = EnumAttributeValidator.new('String', ["DONE", "IN_PROGRESS", "FAILED", "DRAFT", "MODIFYING"])
      unless validator.valid?(creation_status)
        fail ArgumentError, "invalid value for \"creation_status\", must be one of #{validator.allowable_values}."
      end
      @creation_status = creation_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vouchers_generation_status Object to be assigned
    def vouchers_generation_status=(vouchers_generation_status)
      validator = EnumAttributeValidator.new('String', ["DONE", "IN_PROGRESS", "FAILED", "DRAFT", "MODIFYING"])
      unless validator.valid?(vouchers_generation_status)
        fail ArgumentError, "invalid value for \"vouchers_generation_status\", must be one of #{validator.allowable_values}."
      end
      @vouchers_generation_status = vouchers_generation_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          campaign_type == o.campaign_type &&
          type == o.type &&
          voucher == o.voucher &&
          auto_join == o.auto_join &&
          join_once == o.join_once &&
          use_voucher_metadata_schema == o.use_voucher_metadata_schema &&
          validity_timeframe == o.validity_timeframe &&
          validity_day_of_week == o.validity_day_of_week &&
          validity_hours == o.validity_hours &&
          activity_duration_after_publishing == o.activity_duration_after_publishing &&
          vouchers_count == o.vouchers_count &&
          start_date == o.start_date &&
          expiration_date == o.expiration_date &&
          active == o.active &&
          metadata == o.metadata &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          category == o.category &&
          creation_status == o.creation_status &&
          vouchers_generation_status == o.vouchers_generation_status &&
          protected == o.protected &&
          category_id == o.category_id &&
          categories == o.categories &&
          object == o.object &&
          referral_program == o.referral_program &&
          loyalty_tiers_expiration == o.loyalty_tiers_expiration &&
          promotion == o.promotion &&
          validation_rules_assignments == o.validation_rules_assignments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, campaign_type, type, voucher, auto_join, join_once, use_voucher_metadata_schema, validity_timeframe, validity_day_of_week, validity_hours, activity_duration_after_publishing, vouchers_count, start_date, expiration_date, active, metadata, created_at, updated_at, category, creation_status, vouchers_generation_status, protected, category_id, categories, object, referral_program, loyalty_tiers_expiration, promotion, validation_rules_assignments].hash
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
