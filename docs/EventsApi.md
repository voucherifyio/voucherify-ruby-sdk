# VoucherifySdk::EventsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**track_custom_event**](EventsApi.md#track_custom_event) | **POST** /v1/events | Track Custom Event |


## track_custom_event

> <EventsCreateResponseBody> track_custom_event(opts)

Track Custom Event

To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.

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

api_instance = VoucherifySdk::EventsApi.new
opts = {
  events_create_request_body: VoucherifySdk::EventsCreateRequestBody.new({customer: VoucherifySdk::Customer.new}) # EventsCreateRequestBody | Specify the details of the custom event.
}

begin
  # Track Custom Event
  result = api_instance.track_custom_event(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling EventsApi->track_custom_event: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_create_request_body** | [**EventsCreateRequestBody**](EventsCreateRequestBody.md) | Specify the details of the custom event. | [optional] |

### Return type

[**EventsCreateResponseBody**](EventsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

