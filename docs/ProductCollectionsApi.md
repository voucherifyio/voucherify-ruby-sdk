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
  product_collections_create_request_body: VoucherifySdk::ProductCollectionsCreateDynamicRequestBody.new({type: 'AUTO_UPDATE', name: 'name_example', filter: VoucherifySdk::ProductCollectionsCreateDynamicRequestBodyFilter.new({junction: VoucherifySdk::Junction::AND})}) # ProductCollectionsCreateRequestBody | 
}

begin
  # Create Product Collection
  result = api_instance.create_product_collection(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->create_product_collection: #{e}"
end
```

#### Using the create_product_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollectionsCreateResponseBody>, Integer, Hash)> create_product_collection_with_http_info(opts)

```ruby
begin
  # Create Product Collection
  data, status_code, headers = api_instance.create_product_collection_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollectionsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->create_product_collection_with_http_info: #{e}"
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

#### Using the delete_product_collection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_product_collection_with_http_info(product_collection_id)

```ruby
begin
  # Delete Product Collection
  data, status_code, headers = api_instance.delete_product_collection_with_http_info(product_collection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->delete_product_collection_with_http_info: #{e}"
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

#### Using the get_product_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollectionsGetResponseBody>, Integer, Hash)> get_product_collection_with_http_info(product_collection_id)

```ruby
begin
  # Get Product Collection
  data, status_code, headers = api_instance.get_product_collection_with_http_info(product_collection_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollectionsGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->get_product_collection_with_http_info: #{e}"
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
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrder::CREATED_AT # ParameterOrder | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
}

begin
  # List Product Collections
  result = api_instance.list_product_collections(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->list_product_collections: #{e}"
end
```

#### Using the list_product_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollectionsListResponseBody>, Integer, Hash)> list_product_collections_with_http_info(opts)

```ruby
begin
  # List Product Collections
  data, status_code, headers = api_instance.list_product_collections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollectionsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->list_product_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |

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
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
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

#### Using the list_products_in_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollectionsProductsListResponseBody>, Integer, Hash)> list_products_in_collection_with_http_info(product_collection_id, opts)

```ruby
begin
  # List Products in Collection
  data, status_code, headers = api_instance.list_products_in_collection_with_http_info(product_collection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollectionsProductsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductCollectionsApi->list_products_in_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_collection_id** | **String** | Unique product collection ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | Timestamp representing the date and time to use in starting_after cursor to get more data. Represented in ISO 8601 format. | [optional] |

### Return type

[**ProductCollectionsProductsListResponseBody**](ProductCollectionsProductsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

