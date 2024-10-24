# VoucherifySdk::ExportsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_export**](ExportsApi.md#create_export) | **POST** /v1/exports | Create Export |
| [**delete_export**](ExportsApi.md#delete_export) | **DELETE** /v1/exports/{exportId} | Delete Export |
| [**download_export**](ExportsApi.md#download_export) | **GET** /v1/exports/{export_Id} | Download Export |
| [**get_export**](ExportsApi.md#get_export) | **GET** /v1/exports/{exportId} | Get Export |
| [**list_exports**](ExportsApi.md#list_exports) | **GET** /v1/exports | List Exports |


## create_export

> <ExportsCreateResponseBody> create_export(opts)

Create Export

Create export object. The export can be any of the following types: voucher, redemption, publication, customer, order, points_expiration, or voucher_transactions.   # Defaults If you only specify the object type in the request body without specifying the fields, the API will return the following fields per export object:   # Fetching particular data sets Using the parameters body parameter, you can narrow down which fields to export and how to filter the results. The fields are an array of strings containing the data that you would like to export. These fields define the headers in the CSV file. The array can be a combination of any of the following available fields: # Orders     # Vouchers        # Publications   # Redemptions    # Customers       # Points Expirations    # Gift Card Transactions    # Loyalty Card Transactions   

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

api_instance = VoucherifySdk::ExportsApi.new
opts = {
  exports_create_request_body: VoucherifySdk::ExportsCreateRequestBody.new # ExportsCreateRequestBody | Specify the details of the export that you would like to create.
}

begin
  # Create Export
  result = api_instance.create_export(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ExportsApi->create_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exports_create_request_body** | [**ExportsCreateRequestBody**](ExportsCreateRequestBody.md) | Specify the details of the export that you would like to create. | [optional] |

### Return type

[**ExportsCreateResponseBody**](ExportsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_export

> delete_export(export_id)

Delete Export

This method deletes a previously created export object.

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

api_instance = VoucherifySdk::ExportsApi.new
export_id = 'export_id_example' # String | Unique export object ID of previously created export. This object can be a: voucher, redemption, publication, customer, order, points_expiration, or voucher_transactions.

begin
  # Delete Export
  api_instance.delete_export(export_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ExportsApi->delete_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** | Unique export object ID of previously created export. This object can be a: voucher, redemption, publication, customer, order, points_expiration, or voucher_transactions. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## download_export

> String download_export(export_id, opts)

Download Export

Download the contents of the exported CSV file.   📘 Important notes  **Base URL:**   - https://download.voucherify.io (Europe)   - https://us1.download.voucherify.io (US)   - https://as1.download.voucherify.io (Asia)   **Token:** Can be found within the result parameter of the Get Export method response.

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

api_instance = VoucherifySdk::ExportsApi.new
export_id = 'exp_ex6zq0x0EEa9S0N68QcqhxcQ' # String | Unique export object ID.
opts = {
  token: 'token_example' # String | Token that was issued to the export, to get this token, get the export first
}

begin
  # Download Export
  result = api_instance.download_export(export_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ExportsApi->download_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** | Unique export object ID. |  |
| **token** | **String** | Token that was issued to the export, to get this token, get the export first | [optional] |

### Return type

**String**

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_export

> <ExportsGetResponseBody> get_export(export_id)

Get Export

Retrieves the URL of the downloadable file, which was generated via the Create Export method.

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

api_instance = VoucherifySdk::ExportsApi.new
export_id = 'export_id_example' # String | Unique export object ID of previously created export. This object can be a: voucher, redemption, publication, customer, order, points_expiration, or voucher_transactions.

begin
  # Get Export
  result = api_instance.get_export(export_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ExportsApi->get_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_id** | **String** | Unique export object ID of previously created export. This object can be a: voucher, redemption, publication, customer, order, points_expiration, or voucher_transactions. |  |

### Return type

[**ExportsGetResponseBody**](ExportsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_exports

> <ExportsListResponseBody> list_exports(opts)

List Exports

List all exports. 

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

api_instance = VoucherifySdk::ExportsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListExports::CREATED_AT # ParameterOrderListExports | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Exports
  result = api_instance.list_exports(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ExportsApi->list_exports: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListExports**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**ExportsListResponseBody**](ExportsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

