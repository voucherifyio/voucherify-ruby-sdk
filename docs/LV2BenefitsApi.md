# VoucherifySdk::LV2BenefitsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_benefit**](LV2BenefitsApi.md#get_benefit) | **GET** /v2/loyalties/benefits/{benefitId} | Get benefit |


## get_benefit

> <V2LoyaltiesBenefitsGetResponseBody> get_benefit(benefit_id)

Get benefit

Returns a single benefit by its ID.

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

api_instance = VoucherifySdk::LV2BenefitsApi.new
benefit_id = 'benefit_id_example' # String | Unique benefit ID, prefixed with lben_.

begin
  # Get benefit
  result = api_instance.get_benefit(benefit_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2BenefitsApi->get_benefit: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benefit_id** | **String** | Unique benefit ID, prefixed with lben_. |  |

### Return type

[**V2LoyaltiesBenefitsGetResponseBody**](V2LoyaltiesBenefitsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

