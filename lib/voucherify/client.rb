require 'uri'
require 'rest-client'
require 'json'

module Voucherify

  class Client
    def initialize (options)
      @options = options
      @backend_url = 'https://api.voucherify.io/v1'
      @headers = {
          'X-App-Id' => @options[:applicationId],
          'X-App-Token' => @options[:clientSecretKey],
          'X-Voucherify-Channel' => 'Ruby-SDK',
          :accept => :json
      }
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

    def get(path, params = {})
      url = @backend_url + path
      response = RestClient.get(url, @headers.merge({:params => params}))
      JSON.parse(response.body)
    end

    def put(path, body, params = {})
      url = @backend_url + path
      response = RestClient.put(url, body, @headers.merge({:params => params, :content_type => :json}))
      JSON.parse(response.body)
    end

    def post(path, body, params = {})
      url = @backend_url + path
      response = RestClient.post(url, body, @headers.merge({:params => params, :content_type => :json}))
      if !response.body.empty?
        JSON.parse(response.body)
      else
        nil
      end

    end

    def delete(path, params = {})
      url = @backend_url + path
      RestClient.delete(url, @headers.merge({:params => params}))
      nil
    end
  end

end