# VoucherifySdk::LV2RewardsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_reward**](LV2RewardsApi.md#get_reward) | **GET** /v2/loyalties/rewards/{rewardId} | Get reward by ID |


## get_reward

> <V2LoyaltiesRewardsGetResponseBody> get_reward(reward_id)

Get reward by ID

Returns a single reward by its ID.

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

api_instance = VoucherifySdk::LV2RewardsApi.new
reward_id = 'reward_id_example' # String | Identifies the reward. Format lrew_[a-f0-9]+.

begin
  # Get reward by ID
  result = api_instance.get_reward(reward_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2RewardsApi->get_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | Identifies the reward. Format lrew_[a-f0-9]+. |  |

### Return type

[**V2LoyaltiesRewardsGetResponseBody**](V2LoyaltiesRewardsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

