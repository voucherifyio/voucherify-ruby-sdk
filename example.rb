# Load the gem
require 'VoucherifySdk'

# Setup authorization
VoucherifySdk.configure do |config|
    # Configure API key authorization: X-App-Id
    config.api_key['X-App-Id'] = 'YOUR API KEY'

    # Configure API key authorization: X-App-Token
    config.api_key['X-App-Token'] = 'YOUR API KEY'

    # (Optional) Configure Voucherify cluster, default is https://api.voucherify.io
    # config.host = 'https://us1.api.voucherify.io'
end

# Creating API Instance
api_instance = VoucherifySdk::CampaignsApi.new

# Calling list_campaigns
begin
    result = api_instance.list_campaigns()
    puts result
rescue VoucherifySdk::ApiError => e
    puts "Exception when calling VouchersApi->list_campaigns: #{e}"
end
