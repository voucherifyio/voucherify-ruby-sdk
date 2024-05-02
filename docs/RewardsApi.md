# VoucherifySdk::RewardsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reward_assignment**](RewardsApi.md#create_reward_assignment) | **POST** /v1/rewards/{rewardId}/assignments | Create Reward Assignment |
| [**delete_reward**](RewardsApi.md#delete_reward) | **DELETE** /v1/rewards/{rewardId} | Delete Reward |
| [**delete_reward_assignment**](RewardsApi.md#delete_reward_assignment) | **DELETE** /v1/rewards/{rewardId}/assignments/{assignmentId} | Delete Reward Assignment |
| [**get_reward_assignment**](RewardsApi.md#get_reward_assignment) | **GET** /v1/rewards/{rewardId}/assignments/{assignmentId} | Get Reward Assignment |
| [**list_reward_assignments**](RewardsApi.md#list_reward_assignments) | **GET** /v1/rewards/{rewardId}/assignments | List Reward Assignments |
| [**update_reward_assignment**](RewardsApi.md#update_reward_assignment) | **PUT** /v1/rewards/{rewardId}/assignments/{assignmentId} | Update Reward Assignment |


## create_reward_assignment

> <RewardsAssignmentsCreateResponseBody> create_reward_assignment(reward_id, opts)

Create Reward Assignment

Assigns a reward to a specified loyalty campaign.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.
opts = {
  rewards_assignments_create_request_body: VoucherifySdk::RewardAssignmentsCreateCoinRewardRequestBody.new({campaign: 'campaign_example'}) # RewardsAssignmentsCreateRequestBody | Provide the campaign ID of the campaign to which the reward is to be assigned and define the cost of the reward in terms of loyalty points.
}

begin
  # Create Reward Assignment
  result = api_instance.create_reward_assignment(reward_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->create_reward_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **rewards_assignments_create_request_body** | [**RewardsAssignmentsCreateRequestBody**](RewardsAssignmentsCreateRequestBody.md) | Provide the campaign ID of the campaign to which the reward is to be assigned and define the cost of the reward in terms of loyalty points. | [optional] |

### Return type

[**RewardsAssignmentsCreateResponseBody**](RewardsAssignmentsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_reward

> delete_reward(reward_id)

Delete Reward

Delete a reward.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.

begin
  # Delete Reward
  api_instance.delete_reward(reward_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->delete_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_reward_assignment

> delete_reward_assignment(reward_id, assignment_id)

Delete Reward Assignment

This method deletes a reward assignment for a particular reward.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Delete Reward Assignment
  api_instance.delete_reward_assignment(reward_id, assignment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->delete_reward_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reward_assignment

> <RewardsAssignmentsGetResponseBody> get_reward_assignment(reward_id, assignment_id)

Get Reward Assignment

Retrieve a reward assignment.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Get Reward Assignment
  result = api_instance.get_reward_assignment(reward_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->get_reward_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |

### Return type

[**RewardsAssignmentsGetResponseBody**](RewardsAssignmentsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reward_assignments

> <RewardsAssignmentsListResponseBody> list_reward_assignments(reward_id, opts)

List Reward Assignments

Retrieve reward assignments by the reward ID.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.
opts = {
  limit: 56, # Integer | A limit on the number of objects to be returned. Limit can range between 1 and 100 items.
  page: 56 # Integer | Which page of results to return.
}

begin
  # List Reward Assignments
  result = api_instance.list_reward_assignments(reward_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->list_reward_assignments: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **limit** | **Integer** | A limit on the number of objects to be returned. Limit can range between 1 and 100 items. | [optional] |
| **page** | **Integer** | Which page of results to return. | [optional] |

### Return type

[**RewardsAssignmentsListResponseBody**](RewardsAssignmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_reward_assignment

> <RewardsAssignmentsUpdateResponseBody> update_reward_assignment(reward_id, assignment_id, opts)

Update Reward Assignment

Update the number of points needed to successfully redeem the reward.

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

api_instance = VoucherifySdk::RewardsApi.new
reward_id = 'reward_id_example' # String | A unique reward ID.
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.
opts = {
  rewards_assignments_update_request_body: VoucherifySdk::RewardsAssignmentsUpdateRequestBody.new # RewardsAssignmentsUpdateRequestBody | Define the number of points required to exchange for the reward.
}

begin
  # Update Reward Assignment
  result = api_instance.update_reward_assignment(reward_id, assignment_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->update_reward_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |
| **rewards_assignments_update_request_body** | [**RewardsAssignmentsUpdateRequestBody**](RewardsAssignmentsUpdateRequestBody.md) | Define the number of points required to exchange for the reward. | [optional] |

### Return type

[**RewardsAssignmentsUpdateResponseBody**](RewardsAssignmentsUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

