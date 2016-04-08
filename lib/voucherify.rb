require "voucherify/version"
require "net/http"
require "uri"
require "json"

require "pry"


class Voucherify
  def initialize(options)
    @backendUrl = "https://api.voucherify.io/v1"
    @options = options
  end

  def get(code)
    uri = URI.parse("#{@backendUrl}/vouchers/#{URI.encode(code)}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    request = Net::HTTP::Get.new(uri.request_uri)
    request["X-App-Id"] = @options["applicationId"]
    request["X-App-Token"] = @options["clientSecretKey"]
    request["X-Voucherify-Channel"] = "Ruby-SDK"
    request["Accept"] = "application/json"

    response = http.request(request)
    # puts response.code             # => 301
    # puts response.body             # => The body (HTML, XML, blob, whatever)

    # binding.pry
    JSON.parse(response.body)
  end

end
