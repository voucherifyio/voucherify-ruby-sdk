# VoucherifySdk::ProductCollectionsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product_collection**](ProductCollectionsApi.md#create_product_collection) | **POST** /v1/product-collections | Create Product Collection |
| [**delete_product_collection**](ProductCollectionsApi.md#delete_product_collection) | **DELETE** /v1/product-collections/{productCollectionId} | Delete Product Collection |
| [**get_product_collection**](ProductCollectionsApi.md#get_product_collection) | **GET** /v1/product-collections/{productCollectionId} | Get Product Collection |
| [**list_product_collections**](ProductCollectionsApi.md#list_product_collections) | **GET** /v1/product-collections | List Product Collections |
| [**list_products_in_collection**](ProductCollectionsApi.md#list_products_in_collection) | **GET** /v1/product-collections/{productCollectionId}/products | List Products in Collection |


## create_product_collection

> <ProductCollectionsCreateResponseBody> create_product_collection(opts)

Create Product Collection

This method creates a new product collection.

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

api_instance = VoucherifySdk::ProductCollectionsApi.new
opts = {
  product_collections_create_request_body: VoucherifySdk::ProductCollectionsCreateRequestBody.new # ProductCollectionsCreateRequestBody | 
}

begin
  # Create Product Collection
  result = api_instance.create_product_collection(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->create_product_collection: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_collections_create_request_body** | [**ProductCollectionsCreateRequestBody**](ProductCollectionsCreateRequestBody.md) |  | [optional] |

### Return type

[**ProductCollectionsCreateResponseBody**](ProductCollectionsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product_collection

> delete_product_collection(product_collection_id)

Delete Product Collection

This method deletes a product collection.

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

api_instance = VoucherifySdk::ProductCollectionsApi.new
product_collection_id = 'product_collection_id_example' # String | A unique product collection ID.

begin
  # Delete Product Collection
  api_instance.delete_product_collection(product_collection_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->delete_product_collection: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_collection_id** | **String** | A unique product collection ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_product_collection

> <ProductCollectionsGetResponseBody> get_product_collection(product_collection_id)

Get Product Collection

Retrieves the product collection.

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

api_instance = VoucherifySdk::ProductCollectionsApi.new
product_collection_id = 'product_collection_id_example' # String | A unique product collection ID.

begin
  # Get Product Collection
  result = api_instance.get_product_collection(product_collection_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->get_product_collection: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_collection_id** | **String** | A unique product collection ID. |  |

### Return type

[**ProductCollectionsGetResponseBody**](ProductCollectionsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_collections

> <ProductCollectionsListResponseBody> list_product_collections(opts)

List Product Collections

This method returns a list of product collections.

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

api_instance = VoucherifySdk::ProductCollectionsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrder::CREATED_AT # ParameterOrder | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Product Collections
  result = api_instance.list_product_collections(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->list_product_collections: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**ProductCollectionsListResponseBody**](ProductCollectionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_products_in_collection

> <ProductCollectionsProductsListResponseBody> list_products_in_collection(product_collection_id, opts)

List Products in Collection

Retrieves list of products from a product collection; works for both dynamic and static product collections.

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

api_instance = VoucherifySdk::ProductCollectionsApi.new
product_collection_id = 'product_collection_id_example' # String | Unique product collection ID.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time to use in starting_after cursor to get more data. Represented in ISO 8601 format.
}

begin
  # List Products in Collection
  result = api_instance.list_products_in_collection(product_collection_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->list_products_in_collection: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_collection_id** | **String** | Unique product collection ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | Timestamp representing the date and time to use in starting_after cursor to get more data. Represented in ISO 8601 format. | [optional] |

### Return type

[**ProductCollectionsProductsListResponseBody**](ProductCollectionsProductsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

