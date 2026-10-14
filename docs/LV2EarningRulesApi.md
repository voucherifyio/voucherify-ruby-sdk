# VoucherifySdk::LV2EarningRulesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_earning_rule**](LV2EarningRulesApi.md#get_earning_rule) | **GET** /v2/loyalties/earning-rules/{earningRuleId} | Get earning rule |


## get_earning_rule

> <V2LoyaltiesEarningRulesGetResponseBody> get_earning_rule(earning_rule_id)

Get earning rule

Returns a single earning rule by its ID.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::LV2EarningRulesApi.new
earning_rule_id = 'earning_rule_id_example' # String | Earning rule ID.

begin
  # Get earning rule
  result = api_instance.get_earning_rule(earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2EarningRulesApi->get_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **earning_rule_id** | **String** | Earning rule ID. |  |

### Return type

[**V2LoyaltiesEarningRulesGetResponseBody**](V2LoyaltiesEarningRulesGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

