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
  class RedemptionsListResponseBodyRedemptionsItemPromotionTier
    # Unique promotion tier ID.
    attr_accessor :id

    # Timestamp representing the date and time when the promotion tier was created. The value is shown in the ISO 8601 format.
    attr_accessor :created_at

    # Timestamp representing the date and time when the promotion tier was updated. The value is shown in the ISO 8601 format.
    attr_accessor :updated_at

    # Name of the promotion tier.
    attr_accessor :name

    # Text to be displayed to your customers on your website.
    attr_accessor :banner

    attr_accessor :action

    # The metadata object stores all custom attributes assigned to the promotion tier. A set of key/value pairs that you can attach to a promotion tier object. It can be useful for storing additional information about the promotion tier in a structured format.
    attr_accessor :metadata

    # The promotions hierarchy defines the order in which the discounts from different tiers will be applied to a customer's order. If a customer qualifies for discounts from more than one tier, discounts will be applied in the order defined in the hierarchy.
    attr_accessor :hierarchy

    # Promotion unique ID.
    attr_accessor :promotion_id

    attr_accessor :campaign

    # Promotion tier's parent campaign's unique ID.
    attr_accessor :campaign_id

    # A flag to toggle the promotion tier on or off. You can disable a promotion tier even though it's within the active period defined by the `start_date` and `expiration_date`.    - `true` indicates an *active* promotion tier - `false` indicates an *inactive* promotion tier
    attr_accessor :active

    # Activation timestamp defines when the promotion tier starts to be active in ISO 8601 format. Promotion tier is *inactive before* this date. 
    attr_accessor :start_date

    # Activation timestamp defines when the promotion tier expires in ISO 8601 format. Promotion tier is *inactive after* this date. 
    attr_accessor :expiration_date

    attr_accessor :validity_timeframe

    # Integer array corresponding to the particular days of the week in which the voucher is valid.  - `0` Sunday - `1` Monday - `2` Tuesday - `3` Wednesday - `4` Thursday - `5` Friday - `6` Saturday
    attr_accessor :validity_day_of_week

    attr_accessor :validity_hours

    attr_accessor :summary

    # The type of the object represented by JSON. This object stores information about the promotion tier.
    attr_accessor :object

    attr_accessor :validation_rule_assignments

    # Promotion tier category ID.
    attr_accessor :category_id

    attr_accessor :categories

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
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'name' => :'name',
        :'banner' => :'banner',
        :'action' => :'action',
        :'metadata' => :'metadata',
        :'hierarchy' => :'hierarchy',
        :'promotion_id' => :'promotion_id',
        :'campaign' => :'campaign',
        :'campaign_id' => :'campaign_id',
        :'active' => :'active',
        :'start_date' => :'start_date',
        :'expiration_date' => :'expiration_date',
        :'validity_timeframe' => :'validity_timeframe',
        :'validity_day_of_week' => :'validity_day_of_week',
        :'validity_hours' => :'validity_hours',
        :'summary' => :'summary',
        :'object' => :'object',
        :'validation_rule_assignments' => :'validation_rule_assignments',
        :'category_id' => :'category_id',
        :'categories' => :'categories'
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
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'name' => :'String',
        :'banner' => :'String',
        :'action' => :'RedemptionsListResponseBodyRedemptionsItemPromotionTierAction',
        :'metadata' => :'Object',
        :'hierarchy' => :'Integer',
        :'promotion_id' => :'String',
        :'campaign' => :'RedemptionsListResponseBodyRedemptionsItemPromotionTierCampaign',
        :'campaign_id' => :'String',
        :'active' => :'Boolean',
        :'start_date' => :'Time',
        :'expiration_date' => :'Time',
        :'validity_timeframe' => :'ValidityTimeframe',
        :'validity_day_of_week' => :'Array<Integer>',
        :'validity_hours' => :'ValidityHours',
        :'summary' => :'RedemptionsListResponseBodyRedemptionsItemPromotionTierSummary',
        :'object' => :'String',
        :'validation_rule_assignments' => :'ValidationRuleAssignmentsList',
        :'category_id' => :'String',
        :'categories' => :'Array<Category>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'created_at',
        :'updated_at',
        :'name',
        :'banner',
        :'metadata',
        :'hierarchy',
        :'promotion_id',
        :'campaign_id',
        :'active',
        :'start_date',
        :'expiration_date',
        :'object',
        :'category_id',
        :'categories'
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'banner')
        self.banner = attributes[:'banner']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'hierarchy')
        self.hierarchy = attributes[:'hierarchy']
      end

      if attributes.key?(:'promotion_id')
        self.promotion_id = attributes[:'promotion_id']
      end

      if attributes.key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
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

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'promotion_tier'
      end

      if attributes.key?(:'validation_rule_assignments')
        self.validation_rule_assignments = attributes[:'validation_rule_assignments']
      end

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
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
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          name == o.name &&
          banner == o.banner &&
          action == o.action &&
          metadata == o.metadata &&
          hierarchy == o.hierarchy &&
          promotion_id == o.promotion_id &&
          campaign == o.campaign &&
          campaign_id == o.campaign_id &&
          active == o.active &&
          start_date == o.start_date &&
          expiration_date == o.expiration_date &&
          validity_timeframe == o.validity_timeframe &&
          validity_day_of_week == o.validity_day_of_week &&
          validity_hours == o.validity_hours &&
          summary == o.summary &&
          object == o.object &&
          validation_rule_assignments == o.validation_rule_assignments &&
          category_id == o.category_id &&
          categories == o.categories
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, name, banner, action, metadata, hierarchy, promotion_id, campaign, campaign_id, active, start_date, expiration_date, validity_timeframe, validity_day_of_week, validity_hours, summary, object, validation_rule_assignments, category_id, categories].hash
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
