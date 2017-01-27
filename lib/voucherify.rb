require "voucherify/version"
require "net/http"
require "uri"
require "rest-client"
require "json"

# :payload => payload, :headers

class Voucherify

  DEFAULT_REQUEST_TIMEOUT = 1

  def initialize(options)
    @backend_url = "https://api.voucherify.io/v1"
    @options = options
    @headers = {
      "X-App-Id" => @options["applicationId"],
      "X-App-Token" => @options["clientSecretKey"],
      "X-Voucherify-Channel" => "Ruby-SDK",
      :accept => :json
    }
    @timeout = options[:timeout], DEFAULT_REQUEST_TIMEOUT
  end

  def get(code)
    url = @backend_url + "/vouchers/" + URI.encode(code)
    response = RestClient::Request.execute(method: :get, url: url, headers: headers, timeout: timeout)
    JSON.parse(response.body)
  end

  # List vouchers. Query parameters:
  # - code_query
  # - limit (default 10)
  # - skip (default 0)
  # - category
  # - campaign
  # - customer
  # Sample query: { limit: 100, skip: 200, category: "Loyalty" }
  def list(query)
    url = @backend_url + "/vouchers/"
    response = RestClient::Request.execute(method: :get, url: url, headers: headers.merge({ :params => query }), timeout: timeout)
    JSON.parse(response.body)
  end

  def redemption(code)
    url = @backend_url + "/vouchers/" + URI.encode(code) + "/redemption"
    response = RestClient::Request.execute(method: :get, url: url, headers: headers, timeout: timeout)
    JSON.parse(response.body)
  end

  # List redemptions. Sample query (1000 successful redemptions from April 2016):
  # {
  #   limit: 1000,
  #   page: 0,
  #   start_date: "2016-04-01T00:00:00",
  #   end_date: "2016-04-30T23:59:59",
  #   result: "Success"
  # }
  def redemptions(query)
    url = @backend_url + "/redemptions/"
    response = RestClient::Request.execute(method: :get, url: url, headers: headers.merge({ :params => query }), timeout: timeout)
    JSON.parse(response.body)
  end
  
  # Sample context: 
  # {
  #     tracking_id: "john@lemon.com",
  #     customer: {
  #         id: "cust_07sVjVsr71Ewot9lVZSrIVLH",
  #         source_id: "john@lemon.com",
  #         name: "John Lemon"
  #     },
  #     order: {
  #        amount: 1000
  #     }
  # }
  def validate(code, context = {})
    url = @backend_url + "/vouchers/" + URI.encode(code) + "/validate"
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: context.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def redeem(code, tracking_id = nil)
    payload = {}

    if code.is_a? Hash
      payload = code
      code = payload["voucher"] || payload[:voucher]
      payload.delete "voucher"
      payload.delete :voucher
    end

    url = @backend_url + "/vouchers/" + URI.encode(code) + "/redemption"
    url += ("?tracking_id=" + URI.encode(tracking_id)) if tracking_id

    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: payload.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def publish(campaign_name)
    url = @backend_url + "/vouchers/publish"
    payload = {}
    
    if campaign_name.is_a? String
      url += "?campaign=" + URI.encode(campaign_name)
    elsif campaign_name.is_a? Hash
      payload = campaign_name
    end
        
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: payload.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  # `code` is optional - will be generated if absent.
  # Sample `options` object:
  # {
  #   category: "New Customers",
  #   type: "DISCOUNT_VOUCHER",
  #   discount: {
  #     percent_off: 10.0,
  #     type: "PERCENT"
  #   },
  #   start_date: "2016-01-01T00:00:00Z",
  #   expiration_date: "2016-12-31T23:59:59Z",
  #   redemption: {
  #     quantity: 100 
  #   }
  # }
  def create(code, options = {})
    url = @backend_url + "/vouchers/"
    url += URI.encode(code) if code
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: options.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def create_in_campaign(campaign_name, options = {})
    # https://api.voucherify.io/v1/campaigns/TESTING-CAMPAIGN/vouchers/
    url = @backend_url + "/campaigns/" + URI.encode(campaign_name) + "/vouchers/"
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: options.to_json, timeout: timeout)
    JSON.parse(response.body)
  end
  
  def update(voucher_update)
    url = @backend_url + "/vouchers/" + URI.encode(voucher_update["code"])
    response = RestClient::Request.execute(method: :put, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: voucher_update.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def enable(code)
    url = @backend_url + "/vouchers/" + URI.encode(code) + "/enable"
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: nil, timeout: timeout)
    nil
  end

  def disable(code)
    url = @backend_url + "/vouchers/" + URI.encode(code) + "/disable"
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: nil, timeout: timeout)
    nil
  end
  
  def rollback(redemption_id, tracking_id=nil, reason=nil)
    url = @backend_url + "/redemptions/" + URI.encode(redemption_id) + "/rollback"
    if tracking_id || reason
        url += "?" + URI.encode_www_form(:tracking_id => tracking_id, :reason => reason)
    end
    response = RestClient.post(url, nil, @headers.merge({ :content_type => :json }))
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: nil, timeout: timeout)
    JSON.parse(response.body)
  end

  def create_customer(customer)
    url = @backend_url + "/customers/"
    response = RestClient::Request.execute(method: :post, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: customer.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def get_customer(customer_id)
    url = @backend_url + "/customers/" + customer_id
    response = RestClient::Request.execute( method: :get   , url:     url, 
                                           headers: headers, timeout: timeout)
    JSON.parse(response.body)
  end

  def update_customer(customer)
    url = @backend_url + "/customers/" + (customer["id"] || customer[:id])
    response = RestClient::Request.execute(method: :put, url: url, 
                                          headers: headers.merge({ :content_type => :json }), 
                                          payload: customer.to_json, timeout: timeout)
    JSON.parse(response.body)
  end

  def delete_customer(customer_id)
    url = @backend_url + "/customers/" + customer_id
    response = RestClient::Request.execute(method: :delete, url: url, 
                                          headers: headers, timeout: timeout)
    nil
  end

  private
    attr_reader :timeout, :headers
end
