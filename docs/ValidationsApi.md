# VoucherifySdk::ValidationsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate_stacked_discounts**](ValidationsApi.md#validate_stacked_discounts) | **POST** /v1/validations | Validate Stackable Discounts |


## validate_stacked_discounts

> <ValidationsValidateResponseBody> validate_stacked_discounts(opts)

Validate Stackable Discounts

Verify redeemables provided in the request. This method is designed for server side integration which means that it is accessible only through private keys.

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

api_instance = VoucherifySdk::ValidationsApi.new
opts = {
  validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new # ValidationsValidateRequestBody | 
}

begin
  # Validate Stackable Discounts
  result = api_instance.validate_stacked_discounts(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationsApi->validate_stacked_discounts: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validations_validate_request_body** | [**ValidationsValidateRequestBody**](ValidationsValidateRequestBody.md) |  | [optional] |

### Return type

[**ValidationsValidateResponseBody**](ValidationsValidateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

