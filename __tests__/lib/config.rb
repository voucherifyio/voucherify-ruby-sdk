require 'time'
require 'VoucherifySdk'
require 'json/ext'
require 'dotenv'

current_directory = File.dirname(__FILE__)
parent_directory = File.expand_path('../..', current_directory)
dotenv_path = File.join(parent_directory, '.env')

Dotenv.load(dotenv_path)

module Config
    VoucherifySdk.configure do |config|
      config.api_key['X-App-Id'] = ENV['X_APP_ID']
      config.api_key['X-App-Token'] = ENV['X_APP_TOKEN']
      config.host = ENV['VOUCHERIFY_HOST'] || 'https://api.voucherify.io'
    end

    def self.products_api_instance
      return VoucherifySdk::ProductsApi.new()
    end

    def self.campaigns_api_instance
      return VoucherifySdk::CampaignsApi.new()
    end

    def self.validation_rules_api_instance
      return VoucherifySdk::ValidationRulesApi.new()
    end

    def self.customers_api_instance
      return VoucherifySdk::CustomersApi.new()
    end

    def self.exports_api_instance
      return VoucherifySdk::ExportsApi.new()
    end

    def self.redemptions_api_instance
      return VoucherifySdk::RedemptionsApi.new()
    end

    def self.publications_api_instance
      return VoucherifySdk::PublicationsApi.new()
    end

    def self.qualifications_api_instance
      return VoucherifySdk::QualificationsApi.new()
    end

    def self.validations_api_instance
      return VoucherifySdk::ValidationsApi.new()
    end

    def self.vouchers_api_instance
      return VoucherifySdk::VouchersApi.new()
    end

    def self.events_api_instance
      return VoucherifySdk::EventsApi.new()
    end

    def self.async_actions_api_instance
      return VoucherifySdk::AsyncActionsApi.new()
    end

    def self.order_api_instance
      return VoucherifySdk::OrdersApi.new()
    end

    def self.loyalties_api_instance
      return VoucherifySdk::LoyaltiesApi.new()
    end

    def self.vouchers_api_instance
      return VoucherifySdk::VouchersApi.new()
    end

    def self.management_api_instance
      management_config = VoucherifySdk::Configuration.new
      management_config.api_key['X-Management-Id'] = ENV['X_MANAGEMENT_ID']
      management_config.api_key['X-Management-Token'] = ENV['X_MANAGEMENT_TOKEN']
      management_config.host = ENV['VOUCHERIFY_HOST'] || 'https://api.voucherify.io'

      return VoucherifySdk::ManagementApi.new(VoucherifySdk::ApiClient.new(management_config))
    end

    def self.management_credentials_configured?
      return !ENV['X_MANAGEMENT_ID'].to_s.empty? && !ENV['X_MANAGEMENT_TOKEN'].to_s.empty?
    end

    def self.management_project_id
      return ENV['PROJECT_ID']
    end
end

