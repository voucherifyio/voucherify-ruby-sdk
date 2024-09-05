# VoucherifySdk::RewardsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reward**](RewardsApi.md#create_reward) | **POST** /v1/rewards | Create Reward |
| [**create_reward_assignment**](RewardsApi.md#create_reward_assignment) | **POST** /v1/rewards/{rewardId}/assignments | Create Reward Assignment |
| [**delete_reward**](RewardsApi.md#delete_reward) | **DELETE** /v1/rewards/{rewardId} | Delete Reward |
| [**delete_reward_assignment**](RewardsApi.md#delete_reward_assignment) | **DELETE** /v1/rewards/{rewardId}/assignments/{assignmentId} | Delete Reward Assignment |
| [**get_reward**](RewardsApi.md#get_reward) | **GET** /v1/rewards/{rewardId} | Get Reward |
| [**get_reward_assignment**](RewardsApi.md#get_reward_assignment) | **GET** /v1/rewards/{rewardId}/assignments/{assignmentId} | Get Reward Assignment |
| [**list_reward_assignments**](RewardsApi.md#list_reward_assignments) | **GET** /v1/rewards/{rewardId}/assignments | List Reward Assignments |
| [**list_rewards**](RewardsApi.md#list_rewards) | **GET** /v1/rewards | List Rewards |
| [**update_reward**](RewardsApi.md#update_reward) | **PUT** /v1/rewards/{rewardId} | Update Reward |
| [**update_reward_assignment**](RewardsApi.md#update_reward_assignment) | **PUT** /v1/rewards/{rewardId}/assignments/{assignmentId} | Update Reward Assignment |


## create_reward

> <RewardsCreateResponseBody> create_reward(opts)

Create Reward

Create a new reward.

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
opts = {
  rewards_create_request_body: VoucherifySdk::RewardsCreateRequestBody.new # RewardsCreateRequestBody | Define parameters of the new reward.
}

begin
  # Create Reward
  result = api_instance.create_reward(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->create_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rewards_create_request_body** | [**RewardsCreateRequestBody**](RewardsCreateRequestBody.md) | Define parameters of the new reward. | [optional] |

### Return type

[**RewardsCreateResponseBody**](RewardsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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
  rewards_assignments_create_request_body: VoucherifySdk::RewardsAssignmentsCreateRequestBody.new # RewardsAssignmentsCreateRequestBody | Provide the campaign ID of the campaign to which the reward is to be assigned and define the cost of the reward in terms of loyalty points.
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


## get_reward

> <Reward> get_reward(reward_id)

Get Reward

Retrieve a reward by the reward ID.

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
  # Get Reward
  result = api_instance.get_reward(reward_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->get_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |

### Return type

[**Reward**](Reward.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56 # Integer | Which page of results to return. The lowest value is 1.
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
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |

### Return type

[**RewardsAssignmentsListResponseBody**](RewardsAssignmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rewards

> <RewardsListResponseBody> list_rewards(opts)

List Rewards

Retrieve rewards.

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
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  assignment_id: 'assignment_id_example' # String | A unique reward assignment ID. Use this parameter to get the reward details in the context of an assignment ID.
}

begin
  # List Rewards
  result = api_instance.list_rewards(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->list_rewards: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **assignment_id** | **String** | A unique reward assignment ID. Use this parameter to get the reward details in the context of an assignment ID. | [optional] |

### Return type

[**RewardsListResponseBody**](RewardsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_reward

> <RewardsUpdateResponseBody> update_reward(reward_id, opts)

Update Reward

Update the details of a reward.

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
  rewards_update_request_body: VoucherifySdk::RewardsUpdateRequestBody.new # RewardsUpdateRequestBody | Define the parameters to be updated for the reward.
}

begin
  # Update Reward
  result = api_instance.update_reward(reward_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RewardsApi->update_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | A unique reward ID. |  |
| **rewards_update_request_body** | [**RewardsUpdateRequestBody**](RewardsUpdateRequestBody.md) | Define the parameters to be updated for the reward. | [optional] |

### Return type

[**RewardsUpdateResponseBody**](RewardsUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
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

