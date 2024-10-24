# VoucherifySdk::MetadataSchemasApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metadata_schema**](MetadataSchemasApi.md#get_metadata_schema) | **GET** /v1/metadata-schemas/{resource} | Get Metadata Schema |
| [**list_metadata_schemas**](MetadataSchemasApi.md#list_metadata_schemas) | **GET** /v1/metadata-schemas | List Metadata Schemas |


## get_metadata_schema

> <MetadataSchemasGetResponseBody> get_metadata_schema(resource)

Get Metadata Schema

Retrieves a metadata schema per resource type. # Resource types ## Standard You can retrieve metadata schemas for the standard metadata schema definitions listed below. Add one of these types as the resource path parameter. - campaign - customer - earning_rule - loyalty_tier - order - order_item - product - promotion_tier - publication - redemption - reward - voucher ## Custom If you have defined a [custom metadata schema](https://support.voucherify.io/article/99-schema-validation-metadata#add-metadata), provide its name in the resource field to retrieve its details. 📘 Management API If you have Management API enabled, you can also use the Get Metadata Schemas endpoint to retrieve a metadata schema using its ID.

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

api_instance = VoucherifySdk::MetadataSchemasApi.new
resource = 'resource_example' # String | There is an infinite number of possibilities for retrieving metadata schemas by the resource type because you can define custom metadata schemas.

begin
  # Get Metadata Schema
  result = api_instance.get_metadata_schema(resource)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling MetadataSchemasApi->get_metadata_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | There is an infinite number of possibilities for retrieving metadata schemas by the resource type because you can define custom metadata schemas. |  |

### Return type

[**MetadataSchemasGetResponseBody**](MetadataSchemasGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_metadata_schemas

> <MetadataSchemasListResponseBody> list_metadata_schemas

List Metadata Schemas

Retrieve metadata schema definitions. 📘 Management API If you have Management API enabled, you can also use the List Metadata Schemas endpoint to list all metadata schemas.

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

api_instance = VoucherifySdk::MetadataSchemasApi.new

begin
  # List Metadata Schemas
  result = api_instance.list_metadata_schemas
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling MetadataSchemasApi->list_metadata_schemas: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MetadataSchemasListResponseBody**](MetadataSchemasListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

