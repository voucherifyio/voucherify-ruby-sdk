# VoucherifySdk::CategoriesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_category**](CategoriesApi.md#create_category) | **POST** /v1/categories | Create Category |
| [**delete_category**](CategoriesApi.md#delete_category) | **DELETE** /v1/categories/{categoryId} | Delete Category |
| [**get_category**](CategoriesApi.md#get_category) | **GET** /v1/categories/{categoryId} | Get Category |
| [**list_categories**](CategoriesApi.md#list_categories) | **GET** /v1/categories | List Categories |
| [**update_category**](CategoriesApi.md#update_category) | **PUT** /v1/categories/{categoryId} | Update Category |


## create_category

> <CategoriesCreateResponseBody> create_category(opts)

Create Category

Create category with a specific name and hierarchy.

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

api_instance = VoucherifySdk::CategoriesApi.new
opts = {
  categories_create_request_body: VoucherifySdk::CategoriesCreateRequestBody.new # CategoriesCreateRequestBody | Specify the details of the category that you would like to create.
}

begin
  # Create Category
  result = api_instance.create_category(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CategoriesApi->create_category: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories_create_request_body** | [**CategoriesCreateRequestBody**](CategoriesCreateRequestBody.md) | Specify the details of the category that you would like to create. | [optional] |

### Return type

[**CategoriesCreateResponseBody**](CategoriesCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_category

> delete_category(category_id)

Delete Category

Delete a category by the category ID.

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

api_instance = VoucherifySdk::CategoriesApi.new
category_id = 'category_id_example' # String | Unique category ID assigned by Voucherify.

begin
  # Delete Category
  api_instance.delete_category(category_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CategoriesApi->delete_category: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | Unique category ID assigned by Voucherify. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_category

> <CategoriesGetResponseBody> get_category(category_id)

Get Category

Retrieve a category by the category ID.

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

api_instance = VoucherifySdk::CategoriesApi.new
category_id = 'category_id_example' # String | Unique category ID assigned by Voucherify.

begin
  # Get Category
  result = api_instance.get_category(category_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CategoriesApi->get_category: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | Unique category ID assigned by Voucherify. |  |

### Return type

[**CategoriesGetResponseBody**](CategoriesGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_categories

> <CategoriesListResponseBody> list_categories

List Categories

List all categories.

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

api_instance = VoucherifySdk::CategoriesApi.new

begin
  # List Categories
  result = api_instance.list_categories
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CategoriesApi->list_categories: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CategoriesListResponseBody**](CategoriesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_category

> <CategoriesUpdateResponseBody> update_category(category_id, opts)

Update Category

Update category using the category ID.

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

api_instance = VoucherifySdk::CategoriesApi.new
category_id = 'category_id_example' # String | Unique category ID assigned by Voucherify.
opts = {
  categories_update_request_body: VoucherifySdk::CategoriesUpdateRequestBody.new # CategoriesUpdateRequestBody | Specify the details of the category that you would like to update.
}

begin
  # Update Category
  result = api_instance.update_category(category_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CategoriesApi->update_category: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | Unique category ID assigned by Voucherify. |  |
| **categories_update_request_body** | [**CategoriesUpdateRequestBody**](CategoriesUpdateRequestBody.md) | Specify the details of the category that you would like to update. | [optional] |

### Return type

[**CategoriesUpdateResponseBody**](CategoriesUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

