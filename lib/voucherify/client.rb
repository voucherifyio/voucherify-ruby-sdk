require 'uri'
require 'rest-client'
require 'json'

module Voucherify

  class Client
    attr_reader :backend_url

    def initialize (options)
      @options = options
      @backend_url = 'https://api.voucherify.io/v1'
      @headers = {
          'X-App-Id' => @options[:applicationId] || @options['applicationId'],
          'X-App-Token' => @options[:clientSecretKey] || @options['clientSecretKey'],
          'X-Voucherify-Channel' => 'Ruby-SDK',
          'X-Voucherify-API-Version' => @options[:apiVersion] || @options['apiVersion'],
          :accept => :json,
      }.reject{ |k,v| v.nil? }
    end

    def vouchers
      Voucherify::Service::Vouchers.new(self)
    end

    def distributions
      Voucherify::Service::Distributions.new(self)
    end

    def validations
      Voucherify::Service::Validations.new(self)
    end

    def redemptions
      Voucherify::Service::Redemptions.new(self)
    end

    def customers
      Voucherify::Service::Customers.new(self)
    end

    def products
      Voucherify::Service::Products.new(self)
    end

    def campaigns
      Voucherify::Service::Campaigns.new(self)
    end

    def validation_rules
      Voucherify::Service::ValidationRules.new(self)
    end

    def segments
      Voucherify::Service::Segments.new(self)
    end

    def events
      Voucherify::Service::Events.new(self)
    end

    def promotions
      Voucherify::Service::Promotions.new(self)
    end

    def get(path, params = {})
      begin
        url = @backend_url + path
        response = RestClient.get(url, @headers.merge({:params => params}))
        JSON.parse(response.body)
      rescue RestClient::Exception => e
        raise VoucherifyError.new(e)
      end
    end

    def put(path, body, params = {})
      begin
        url = @backend_url + path
        response = RestClient.put(url, body, @headers.merge({:params => params, :content_type => :json}))
        JSON.parse(response.body)
      rescue RestClient::Exception => e
        raise VoucherifyError.new(e)
      end
    end

    def post(path, body, params = {})
      begin
        url = @backend_url + path
        response = RestClient.post(url, body, @headers.merge({:params => params, :content_type => :json}))
        if !response.body.empty?
          JSON.parse(response.body)
        else
          nil
        end
      rescue RestClient::Exception => e
        raise VoucherifyError.new(e)
      end
    end

    def delete(path, params = {})
      begin
        url = @backend_url + path
        RestClient.delete(url, @headers.merge({:params => params}))
        nil
      rescue RestClient::Exception => e
        raise VoucherifyError.new(e)
      end
    end
  end
  
  class VoucherifyError < RuntimeError
    attr_reader :response
    attr_reader :code
    attr_reader :details
    attr_reader :key
  
    def initialize (restClientError)
      @response = restClientError.response
      parsedResponse = JSON.parse(@response)
      @code = parsedResponse['code']
      @details = parsedResponse['details']
      @key = parsedResponse['key']
      super(parsedResponse['message'])
    end
  end

end