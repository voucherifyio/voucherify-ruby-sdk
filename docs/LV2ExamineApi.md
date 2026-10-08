# VoucherifySdk::LV2ExamineApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**examine_earning_rules**](LV2ExamineApi.md#examine_earning_rules) | **POST** /v2/loyalties/examine/earning-rules | Examine earning rules |
| [**examine_rewards**](LV2ExamineApi.md#examine_rewards) | **POST** /v2/loyalties/examine/rewards | Examine rewards |


## examine_earning_rules

> <LoyaltiesExamineEarningRulesExamineResponseBody> examine_earning_rules(opts)

Examine earning rules

Estimates earning opportunities for a customer without triggering any actual earning for loyalty v2 earning rules. The trigger selects whether all trigger events or one specific event is examined. When a specific event is selected, exactly one matching context object is required: customer_order_paid for customer.order.paid, customer_segment_entered for customer.segment.entered, and customer_custom_event for customer.custom_event. The other context objects must not be present. This endpoint can examine earning rules for all loyalty programs the customer belongs to by using customer_identification with customer_id or customer_source_id. To examine earning rules only for one program, use member_id in customer_identification, as member_id is loyalty program-specific. A customer who exists but has no active membership returns 200 with an empty memberships array.

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

api_instance = VoucherifySdk::LV2ExamineApi.new
opts = {
  loyalties_examine_earning_rules_examine_request_body: VoucherifySdk::LoyaltiesExamineEarningRulesExamineRequestBody.new({trigger: VoucherifySdk::LoyaltiesExamineEarningRulesExamineRequestBodyTrigger.new, customer_identification: VoucherifySdk::ExamineCustomerIdentification.new}) # LoyaltiesExamineEarningRulesExamineRequestBody | 
}

begin
  # Examine earning rules
  result = api_instance.examine_earning_rules(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ExamineApi->examine_earning_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loyalties_examine_earning_rules_examine_request_body** | [**LoyaltiesExamineEarningRulesExamineRequestBody**](LoyaltiesExamineEarningRulesExamineRequestBody.md) |  | [optional] |

### Return type

[**LoyaltiesExamineEarningRulesExamineResponseBody**](LoyaltiesExamineEarningRulesExamineResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## examine_rewards

> <LoyaltiesExamineRewardsExamineResponseBody> examine_rewards(opts)

Examine rewards

Evaluates rewards assigned to a customers active Loyalty v2 program memberships. Applies temporary customer and member metadata overrides without updating stored data. Returns reward availability by card, including points costs and applicable unavailability reasons. Omits a reward when it is inactive, out of stock, has no matching cost, or the member has no card for that cost. This endpoint can examine rewards for all loyalty programs the customer belongs to by using customer_identification with customer_id or customer_source_id. To examine rewards only for one program, use member_id in customer_identification, as member_id is loyalty program-specific. A customer who exists but has no active membership returns 200 with an empty memberships array.

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

api_instance = VoucherifySdk::LV2ExamineApi.new
opts = {
  loyalties_examine_rewards_examine_request_body: VoucherifySdk::LoyaltiesExamineRewardsExamineRequestBody.new({customer_identification: VoucherifySdk::ExamineCustomerIdentification.new}) # LoyaltiesExamineRewardsExamineRequestBody | 
}

begin
  # Examine rewards
  result = api_instance.examine_rewards(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ExamineApi->examine_rewards: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loyalties_examine_rewards_examine_request_body** | [**LoyaltiesExamineRewardsExamineRequestBody**](LoyaltiesExamineRewardsExamineRequestBody.md) |  | [optional] |

### Return type

[**LoyaltiesExamineRewardsExamineResponseBody**](LoyaltiesExamineRewardsExamineResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

