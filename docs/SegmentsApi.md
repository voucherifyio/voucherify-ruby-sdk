# VoucherifySdk::SegmentsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_segment**](SegmentsApi.md#create_segment) | **POST** /v1/segments | Create Segment |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /v1/segments/{segmentId} | Delete Segment |
| [**get_segment**](SegmentsApi.md#get_segment) | **GET** /v1/segments/{segmentId} | Get Segment |


## create_segment

> <SegmentsCreateResponseBody> create_segment(opts)

Create Segment

Create a customer segment.  🚧 Limit on Static Segments  There is a cap on the number of customers that you can assign to a static segment: **20,000**. If you would like to create a bigger segment, then you can use the unlimited auto-update segment instead and use some customer metadata to build this segment.

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

api_instance = VoucherifySdk::SegmentsApi.new
opts = {
  segments_create_request_body: VoucherifySdk::SegmentsCreateRequestBody.new # SegmentsCreateRequestBody | Specify the boundary conditions for the customer segment.
}

begin
  # Create Segment
  result = api_instance.create_segment(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling SegmentsApi->create_segment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segments_create_request_body** | [**SegmentsCreateRequestBody**](SegmentsCreateRequestBody.md) | Specify the boundary conditions for the customer segment. | [optional] |

### Return type

[**SegmentsCreateResponseBody**](SegmentsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_segment

> delete_segment(segment_id)

Delete Segment

This method deletes a customer segment.

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

api_instance = VoucherifySdk::SegmentsApi.new
segment_id = 'segment_id_example' # String | A unique customer segment ID.

begin
  # Delete Segment
  api_instance.delete_segment(segment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** | A unique customer segment ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_segment

> <SegmentsGetResponseBody> get_segment(segment_id)

Get Segment

Retrieves the segment with given segment ID.

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

api_instance = VoucherifySdk::SegmentsApi.new
segment_id = 'segment_id_example' # String | A unique customer segment ID.

begin
  # Get Segment
  result = api_instance.get_segment(segment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling SegmentsApi->get_segment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** | A unique customer segment ID. |  |

### Return type

[**SegmentsGetResponseBody**](SegmentsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

