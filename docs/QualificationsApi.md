# VoucherifySdk::QualificationsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_eligibility**](QualificationsApi.md#check_eligibility) | **POST** /v1/qualifications | Check Eligibility |


## check_eligibility

> <QualificationsCheckEligibilityResponseBody> check_eligibility(opts)

Check Eligibility

  🚧 The Qualifications endpoint ignores the rules checking:    - Limit of total redeemed discount amount per campaign  - Limit of total redemptions count per campaign  - Redemptions per customer  - Redemptions per customer in a campaign  Generate a list of redeemables that are applicable in the context of the customer and order. The new qualifications method is an improved version of Campaign Qualifications, Voucher Qualifications, and Promotions Validation API requests. The new qualification method introduces the following improvements: - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  👍 Scenario Guide  Read the dedicated guide to learn about some use cases this endpoint can cover. # Paging  The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the starting_after cursor. To process of paging the redeemables works in the following manner: - You send the first API request for Qualifications without the starting_after parameter. - The response will contain a parameter named has_more. If the parameters value is set to true, then more redeemables are available. - Get the value of the created_at parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the starting_after parameter set to the value taken from the created_at parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the has_more parameter is set to true, apply steps 3-5 to get the next page of redeemables.

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

api_instance = VoucherifySdk::QualificationsApi.new
opts = {
  qualifications_check_eligibility_request_body: VoucherifySdk::QualificationsCheckEligibilityRequestBody.new # QualificationsCheckEligibilityRequestBody | Define order and customer context.
}

begin
  # Check Eligibility
  result = api_instance.check_eligibility(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling QualificationsApi->check_eligibility: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qualifications_check_eligibility_request_body** | [**QualificationsCheckEligibilityRequestBody**](QualificationsCheckEligibilityRequestBody.md) | Define order and customer context. | [optional] |

### Return type

[**QualificationsCheckEligibilityResponseBody**](QualificationsCheckEligibilityResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

