# VoucherifySdk::AsyncActionsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_async_action**](AsyncActionsApi.md#get_async_action) | **GET** /v1/async-actions/{asyncActionId} | Get Async Action |
| [**list_async_actions**](AsyncActionsApi.md#list_async_actions) | **GET** /v1/async-actions | List Async Actions |


## get_async_action

> <AsyncActionGetResponseBody> get_async_action(async_action_id)

Get Async Action

Check the result of a scheduled asynchronous operation.   The table below lists the possible types of async actions. The types are different for each endpoint generating the async action. If you would like to learn more about importing data into Voucherify, read more [here](https://support.voucherify.io/article/574-data-import).       

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

api_instance = VoucherifySdk::AsyncActionsApi.new
async_action_id = 'async_action_id_example' # String | Unique ID of the asynchronous operation.

begin
  # Get Async Action
  result = api_instance.get_async_action(async_action_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling AsyncActionsApi->get_async_action: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **async_action_id** | **String** | Unique ID of the asynchronous operation. |  |

### Return type

[**AsyncActionGetResponseBody**](AsyncActionGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_async_actions

> <AsyncActionsListResponseBody> list_async_actions(opts)

List Async Actions

Track asynchronous operations scheduled in your project.   The table below lists the possible types of async actions. The types are different for each endpoint generating the async action. If you would like to learn more about importing data into Voucherify, read more [here](https://support.voucherify.io/article/574-data-import).       

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

api_instance = VoucherifySdk::AsyncActionsApi.new
opts = {
  limit: 56, # Integer | Limit the number of asynchronous actions that the API returns in the response.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Limits results to actions scheduled before the end_date. The date format needs to be consistent with ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). 
}

begin
  # List Async Actions
  result = api_instance.list_async_actions(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling AsyncActionsApi->list_async_actions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit the number of asynchronous actions that the API returns in the response. | [optional] |
| **end_date** | **Time** | Limits results to actions scheduled before the end_date. The date format needs to be consistent with ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16).  | [optional] |

### Return type

[**AsyncActionsListResponseBody**](AsyncActionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

