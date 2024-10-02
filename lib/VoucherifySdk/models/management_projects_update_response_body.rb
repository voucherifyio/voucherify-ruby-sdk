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
  class ManagementProjectsUpdateResponseBody
    # Unique identifier of the project.
    attr_accessor :id

    # The name of the project.
    attr_accessor :name

    # A user-defined description of the project, e.g. its purpose, scope, region.
    attr_accessor :description

    # The time zone in which the project is established. It can be in the GMT format or in accordance with IANA time zone database.
    attr_accessor :timezone

    # The currency used in the project. It is equal to a 3-letter ISO 4217 code.
    attr_accessor :currency

    # The country dial code for the project. It is equal to an ITU country code.
    attr_accessor :dial_code

    # The webhook version used in the project.
    attr_accessor :webhook_version

    # An array of URL addresses that allow client requests.
    attr_accessor :client_trusted_domains

    # Enables client-side redemption.
    attr_accessor :client_redeem_enabled

    # Enables client-side publication.
    attr_accessor :client_publish_enabled

    # Enables client-side listing of vouchers.
    attr_accessor :client_list_vouchers_enabled

    # Enables client-side creation of customers.
    attr_accessor :client_create_customer_enabled

    # Enables client-side events for loyalty and referral programs.
    attr_accessor :client_loyalty_events_enabled

    # Enables client-side setting of voucher expiration date.
    attr_accessor :client_set_voucher_expiration_date_enabled

    attr_accessor :api_usage_notifications

    attr_accessor :webhooks_callout_notifications

    # The identifier of the cluster where the project will be created.
    attr_accessor :cluster_id

    # Determines if the vouchers in the project will be: - case sensitive - if `true`, `C0dE-cfV` is **not** equal to `c0de-cfv`), - case insensitive - if `false`, `C0dE-cfV` is equal to `c0de-cfv`.
    attr_accessor :case_sensitive_codes

    # The API version used in the project. Currently, the default and only value is `v2018-08-01`.
    attr_accessor :api_version

    # Determines if the project is a sandbox project.
    attr_accessor :is_sandbox

    # Webhook token used for authentication.
    attr_accessor :webhook_token

    attr_accessor :default_code_config

    attr_accessor :limits

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
        :'timezone' => :'timezone',
        :'currency' => :'currency',
        :'dial_code' => :'dial_code',
        :'webhook_version' => :'webhook_version',
        :'client_trusted_domains' => :'client_trusted_domains',
        :'client_redeem_enabled' => :'client_redeem_enabled',
        :'client_publish_enabled' => :'client_publish_enabled',
        :'client_list_vouchers_enabled' => :'client_list_vouchers_enabled',
        :'client_create_customer_enabled' => :'client_create_customer_enabled',
        :'client_loyalty_events_enabled' => :'client_loyalty_events_enabled',
        :'client_set_voucher_expiration_date_enabled' => :'client_set_voucher_expiration_date_enabled',
        :'api_usage_notifications' => :'api_usage_notifications',
        :'webhooks_callout_notifications' => :'webhooks_callout_notifications',
        :'cluster_id' => :'cluster_id',
        :'case_sensitive_codes' => :'case_sensitive_codes',
        :'api_version' => :'api_version',
        :'is_sandbox' => :'is_sandbox',
        :'webhook_token' => :'webhook_token',
        :'default_code_config' => :'default_code_config',
        :'limits' => :'limits'
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
        :'timezone' => :'String',
        :'currency' => :'String',
        :'dial_code' => :'String',
        :'webhook_version' => :'String',
        :'client_trusted_domains' => :'Array<String>',
        :'client_redeem_enabled' => :'Boolean',
        :'client_publish_enabled' => :'Boolean',
        :'client_list_vouchers_enabled' => :'Boolean',
        :'client_create_customer_enabled' => :'Boolean',
        :'client_loyalty_events_enabled' => :'Boolean',
        :'client_set_voucher_expiration_date_enabled' => :'Boolean',
        :'api_usage_notifications' => :'ManagementProjectsUpdateResponseBodyApiUsageNotifications',
        :'webhooks_callout_notifications' => :'ManagementProjectsUpdateResponseBodyWebhooksCalloutNotifications',
        :'cluster_id' => :'String',
        :'case_sensitive_codes' => :'Boolean',
        :'api_version' => :'String',
        :'is_sandbox' => :'Boolean',
        :'webhook_token' => :'String',
        :'default_code_config' => :'ManagementProjectsUpdateResponseBodyDefaultCodeConfig',
        :'limits' => :'ManagementProjectsUpdateResponseBodyLimits'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'name',
        :'description',
        :'timezone',
        :'currency',
        :'dial_code',
        :'webhook_version',
        :'client_trusted_domains',
        :'client_redeem_enabled',
        :'client_publish_enabled',
        :'client_list_vouchers_enabled',
        :'client_create_customer_enabled',
        :'client_loyalty_events_enabled',
        :'client_set_voucher_expiration_date_enabled',
        :'api_usage_notifications',
        :'webhooks_callout_notifications',
        :'cluster_id',
        :'case_sensitive_codes',
        :'api_version',
        :'is_sandbox',
        :'webhook_token',
        :'default_code_config',
        :'limits'
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

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'dial_code')
        self.dial_code = attributes[:'dial_code']
      end

      if attributes.key?(:'webhook_version')
        self.webhook_version = attributes[:'webhook_version']
      else
        self.webhook_version = 'v2024-01-01'
      end

      if attributes.key?(:'client_trusted_domains')
        if (value = attributes[:'client_trusted_domains']).is_a?(Array)
          self.client_trusted_domains = value
        end
      end

      if attributes.key?(:'client_redeem_enabled')
        self.client_redeem_enabled = attributes[:'client_redeem_enabled']
      end

      if attributes.key?(:'client_publish_enabled')
        self.client_publish_enabled = attributes[:'client_publish_enabled']
      end

      if attributes.key?(:'client_list_vouchers_enabled')
        self.client_list_vouchers_enabled = attributes[:'client_list_vouchers_enabled']
      end

      if attributes.key?(:'client_create_customer_enabled')
        self.client_create_customer_enabled = attributes[:'client_create_customer_enabled']
      end

      if attributes.key?(:'client_loyalty_events_enabled')
        self.client_loyalty_events_enabled = attributes[:'client_loyalty_events_enabled']
      end

      if attributes.key?(:'client_set_voucher_expiration_date_enabled')
        self.client_set_voucher_expiration_date_enabled = attributes[:'client_set_voucher_expiration_date_enabled']
      end

      if attributes.key?(:'api_usage_notifications')
        self.api_usage_notifications = attributes[:'api_usage_notifications']
      end

      if attributes.key?(:'webhooks_callout_notifications')
        self.webhooks_callout_notifications = attributes[:'webhooks_callout_notifications']
      end

      if attributes.key?(:'cluster_id')
        self.cluster_id = attributes[:'cluster_id']
      end

      if attributes.key?(:'case_sensitive_codes')
        self.case_sensitive_codes = attributes[:'case_sensitive_codes']
      end

      if attributes.key?(:'api_version')
        self.api_version = attributes[:'api_version']
      else
        self.api_version = 'v2018-08-01'
      end

      if attributes.key?(:'is_sandbox')
        self.is_sandbox = attributes[:'is_sandbox']
      end

      if attributes.key?(:'webhook_token')
        self.webhook_token = attributes[:'webhook_token']
      end

      if attributes.key?(:'default_code_config')
        self.default_code_config = attributes[:'default_code_config']
      end

      if attributes.key?(:'limits')
        self.limits = attributes[:'limits']
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
      webhook_version_validator = EnumAttributeValidator.new('String', ["v2024-01-01"])
      return false unless webhook_version_validator.valid?(@webhook_version)
      api_version_validator = EnumAttributeValidator.new('String', ["v2018-08-01"])
      return false unless api_version_validator.valid?(@api_version)
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          timezone == o.timezone &&
          currency == o.currency &&
          dial_code == o.dial_code &&
          webhook_version == o.webhook_version &&
          client_trusted_domains == o.client_trusted_domains &&
          client_redeem_enabled == o.client_redeem_enabled &&
          client_publish_enabled == o.client_publish_enabled &&
          client_list_vouchers_enabled == o.client_list_vouchers_enabled &&
          client_create_customer_enabled == o.client_create_customer_enabled &&
          client_loyalty_events_enabled == o.client_loyalty_events_enabled &&
          client_set_voucher_expiration_date_enabled == o.client_set_voucher_expiration_date_enabled &&
          api_usage_notifications == o.api_usage_notifications &&
          webhooks_callout_notifications == o.webhooks_callout_notifications &&
          cluster_id == o.cluster_id &&
          case_sensitive_codes == o.case_sensitive_codes &&
          api_version == o.api_version &&
          is_sandbox == o.is_sandbox &&
          webhook_token == o.webhook_token &&
          default_code_config == o.default_code_config &&
          limits == o.limits
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, timezone, currency, dial_code, webhook_version, client_trusted_domains, client_redeem_enabled, client_publish_enabled, client_list_vouchers_enabled, client_create_customer_enabled, client_loyalty_events_enabled, client_set_voucher_expiration_date_enabled, api_usage_notifications, webhooks_callout_notifications, cluster_id, case_sensitive_codes, api_version, is_sandbox, webhook_token, default_code_config, limits].hash
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
