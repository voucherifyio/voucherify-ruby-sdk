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
  # Defines customer cockpit details.
  class ManagementProjectsBrandingUpdateRequestBodyCockpits
    # Indicates if the campaign overview is turned on for customers.
    attr_accessor :campaigns_overview_enabled

    # Indicates if the loyalty campaign overview is turned on for customers.
    attr_accessor :loyalty_enabled

    # Indicates if the gift card overview is turned on for customers.
    attr_accessor :gift_cards_enabled

    # Indicates if the discount coupon overview is turned on for customers.
    attr_accessor :coupons_enabled

    # Indicates if the referral campaign overview is turned on for customers.
    attr_accessor :referrals_enabled

    # Determines the color scheme of the customer cockpit.
    attr_accessor :theme

    # Indicates if the double opt-in option is turned on.
    attr_accessor :use_custom_double_opt_in_redirect_url

    # Defines the URL for the double opt-in consent.
    attr_accessor :custom_double_opt_in_redirect_url

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
        :'campaigns_overview_enabled' => :'campaigns_overview_enabled',
        :'loyalty_enabled' => :'loyalty_enabled',
        :'gift_cards_enabled' => :'gift_cards_enabled',
        :'coupons_enabled' => :'coupons_enabled',
        :'referrals_enabled' => :'referrals_enabled',
        :'theme' => :'theme',
        :'use_custom_double_opt_in_redirect_url' => :'use_custom_double_opt_in_redirect_url',
        :'custom_double_opt_in_redirect_url' => :'custom_double_opt_in_redirect_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'campaigns_overview_enabled' => :'Boolean',
        :'loyalty_enabled' => :'Boolean',
        :'gift_cards_enabled' => :'Boolean',
        :'coupons_enabled' => :'Boolean',
        :'referrals_enabled' => :'Boolean',
        :'theme' => :'String',
        :'use_custom_double_opt_in_redirect_url' => :'Boolean',
        :'custom_double_opt_in_redirect_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'campaigns_overview_enabled',
        :'loyalty_enabled',
        :'gift_cards_enabled',
        :'coupons_enabled',
        :'referrals_enabled',
        :'theme',
        :'use_custom_double_opt_in_redirect_url',
        :'custom_double_opt_in_redirect_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'campaigns_overview_enabled')
        self.campaigns_overview_enabled = attributes[:'campaigns_overview_enabled']
      end

      if attributes.key?(:'loyalty_enabled')
        self.loyalty_enabled = attributes[:'loyalty_enabled']
      end

      if attributes.key?(:'gift_cards_enabled')
        self.gift_cards_enabled = attributes[:'gift_cards_enabled']
      end

      if attributes.key?(:'coupons_enabled')
        self.coupons_enabled = attributes[:'coupons_enabled']
      end

      if attributes.key?(:'referrals_enabled')
        self.referrals_enabled = attributes[:'referrals_enabled']
      end

      if attributes.key?(:'theme')
        self.theme = attributes[:'theme']
      end

      if attributes.key?(:'use_custom_double_opt_in_redirect_url')
        self.use_custom_double_opt_in_redirect_url = attributes[:'use_custom_double_opt_in_redirect_url']
      end

      if attributes.key?(:'custom_double_opt_in_redirect_url')
        self.custom_double_opt_in_redirect_url = attributes[:'custom_double_opt_in_redirect_url']
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
      theme_validator = EnumAttributeValidator.new('String', ["orange", "green", "dark-green", "blue", "purple", "red", "grey"])
      return false unless theme_validator.valid?(@theme)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          campaigns_overview_enabled == o.campaigns_overview_enabled &&
          loyalty_enabled == o.loyalty_enabled &&
          gift_cards_enabled == o.gift_cards_enabled &&
          coupons_enabled == o.coupons_enabled &&
          referrals_enabled == o.referrals_enabled &&
          theme == o.theme &&
          use_custom_double_opt_in_redirect_url == o.use_custom_double_opt_in_redirect_url &&
          custom_double_opt_in_redirect_url == o.custom_double_opt_in_redirect_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [campaigns_overview_enabled, loyalty_enabled, gift_cards_enabled, coupons_enabled, referrals_enabled, theme, use_custom_double_opt_in_redirect_url, custom_double_opt_in_redirect_url].hash
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
