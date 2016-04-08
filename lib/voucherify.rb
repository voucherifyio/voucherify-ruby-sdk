require "voucherify/version"
require "net/http"
require "uri"
require "rest-client"
require "json"

require "pry"


class Voucherify
  def initialize(options)
    @backendUrl = "https://api.voucherify.io/v1"
    @options = options
    @headers = {
      "X-App-Id" => @options["applicationId"],
      "X-App-Token" => @options["clientSecretKey"],
      "X-Voucherify-Channel" => "Ruby-SDK",
      :accept => :json
    }
  end

  def get(code)
    url = @backendUrl + "/vouchers/" + URI.encode(code)
    response = RestClient.get(url, @headers)
    JSON.parse(response.body)
  end

  # List vouchers. Sample query: { limit: 100, skip: 200, category: "Loyalty" }
  def list(query)
    url = @backendUrl + "/vouchers/"
    response = RestClient.get(url, @headers.merge({ :params => query }))
    JSON.parse(response.body)
  end

  def redemption(code)
    url = @backendUrl + "/vouchers/" + URI.encode(code) + "/redemption"
    response = RestClient.get(url, @headers)
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
    url = @backendUrl + "/redemptions/"
    response = RestClient.get(url, @headers.merge({ :params => query }))
    JSON.parse(response.body)
  end

  def redeem(code, tracking_id = nil)
    payload = {}

    if code.is_a? Hash
      payload = code
      code = payload["voucher"]
      payload.delete "voucher"
    end

    url = @backendUrl + "/vouchers/" + URI.encode(code) + "/redemption"
    url += ("?tracking_id=" + URI.encode(tracking_id)) if tracking_id

    response = RestClient.post(url, payload.to_json, @headers.merge({ :content_type => :json }))
    JSON.parse(response.body)
  end

  def publish(campaign_name)
    url = @backendUrl + "/vouchers/publish?campaign=" + URI.encode(campaign_name)
    response = RestClient.post(url, nil, @headers.merge({ :content_type => :json }))
    JSON.parse(response.body)
  end
end
