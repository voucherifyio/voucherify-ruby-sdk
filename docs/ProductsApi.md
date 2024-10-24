# VoucherifySdk::ProductsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /v1/products | Create Product |
| [**create_sku**](ProductsApi.md#create_sku) | **POST** /v1/products/{productId}/skus | Create SKU |
| [**delete_product**](ProductsApi.md#delete_product) | **DELETE** /v1/products/{productId} | Delete Product |
| [**delete_sku**](ProductsApi.md#delete_sku) | **DELETE** /v1/products/{productId}/skus/{skuId} | Delete SKU |
| [**get_product**](ProductsApi.md#get_product) | **GET** /v1/products/{productId} | Get Product |
| [**get_sku**](ProductsApi.md#get_sku) | **GET** /v1/skus/{skuId} | Get SKU |
| [**import_products_using_csv**](ProductsApi.md#import_products_using_csv) | **POST** /v1/products/importCSV | Import Products using CSV |
| [**import_skus_using_csv**](ProductsApi.md#import_skus_using_csv) | **POST** /v1/skus/importCSV | Import SKUs using CSV |
| [**list_products**](ProductsApi.md#list_products) | **GET** /v1/products | List Products |
| [**list_skus_in_product**](ProductsApi.md#list_skus_in_product) | **GET** /v1/products/{productId}/skus | List SKUs in Product |
| [**update_product**](ProductsApi.md#update_product) | **PUT** /v1/products/{productId} | Update Product |
| [**update_products_in_bulk**](ProductsApi.md#update_products_in_bulk) | **POST** /v1/products/bulk/async | Update Products in Bulk |
| [**update_products_metadata_in_bulk**](ProductsApi.md#update_products_metadata_in_bulk) | **POST** /v1/products/metadata/async | Update Products&#39; Metadata in Bulk |
| [**update_sku**](ProductsApi.md#update_sku) | **PUT** /v1/products/{productId}/skus/{skuId} | Update SKU |


## create_product

> <ProductsCreateResponseBody> create_product(opts)

Create Product

Creates a product object.  📘 Upsert Mode  If you pass an id or a source_id that already exists in the product database, Voucherify will return a related product object with updated fields.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  products_create_request_body: VoucherifySdk::ProductsCreateRequestBody.new # ProductsCreateRequestBody | Specify the product parameters.
}

begin
  # Create Product
  result = api_instance.create_product(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_create_request_body** | [**ProductsCreateRequestBody**](ProductsCreateRequestBody.md) | Specify the product parameters. | [optional] |

### Return type

[**ProductsCreateResponseBody**](ProductsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sku

> <ProductsSkusCreateResponseBody> create_sku(product_id, opts)

Create SKU

This method adds product variants to a created product.   📘 Upsert Mode  If you pass an id or a source_id that already exists in the sku database, Voucherify will return a related sku object with updated fields.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A Voucherify product ID or product source ID.
opts = {
  products_skus_create_request_body: VoucherifySdk::ProductsSkusCreateRequestBody.new # ProductsSkusCreateRequestBody | Specify the SKU parameters to be created.
}

begin
  # Create SKU
  result = api_instance.create_sku(product_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_sku: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or product source ID. |  |
| **products_skus_create_request_body** | [**ProductsSkusCreateRequestBody**](ProductsSkusCreateRequestBody.md) | Specify the SKU parameters to be created. | [optional] |

### Return type

[**ProductsSkusCreateResponseBody**](ProductsSkusCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_product

> delete_product(product_id, opts)

Delete Product

Deletes a product and all related SKUs. This operation cannot be undone.  If the force parameter is set to false or not set at all, the product and all related SKUs will be moved to the bin.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A Voucherify product ID or source ID.
opts = {
  force: true # Boolean | If this flag is set to true, the product and all related SKUs will be removed permanently. If it is set to false or not set at all, the product and all related SKUs will be moved to the bin. Going forward, the user will be able to create another product with exactly the same source_id.
}

begin
  # Delete Product
  api_instance.delete_product(product_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or source ID. |  |
| **force** | **Boolean** | If this flag is set to true, the product and all related SKUs will be removed permanently. If it is set to false or not set at all, the product and all related SKUs will be moved to the bin. Going forward, the user will be able to create another product with exactly the same source_id. | [optional] |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_sku

> delete_sku(product_id, sku_id, opts)

Delete SKU

Deletes a product SKU. This operation cannot be undone.  If the force parameter is set to false or not set at all, the SKU will be moved to the bin.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A unique Voucherify product ID or product source ID.
sku_id = 'sku_id_example' # String | A Voucherify SKU ID or SKU source ID.
opts = {
  force: true # Boolean | If this flag is set to true, the SKU will be removed permanently. If it is set to false or not set at all, the SKU will be moved to the bin. Going forward, the user will be able to create another SKU with exactly the same source_id.
}

begin
  # Delete SKU
  api_instance.delete_sku(product_id, sku_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_sku: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A unique Voucherify product ID or product source ID. |  |
| **sku_id** | **String** | A Voucherify SKU ID or SKU source ID. |  |
| **force** | **Boolean** | If this flag is set to true, the SKU will be removed permanently. If it is set to false or not set at all, the SKU will be moved to the bin. Going forward, the user will be able to create another SKU with exactly the same source_id. | [optional] |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_product

> <ProductsGetResponseBody> get_product(product_id)

Get Product

Retrieve product details.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A Voucherify product ID or source ID.

begin
  # Get Product
  result = api_instance.get_product(product_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or source ID. |  |

### Return type

[**ProductsGetResponseBody**](ProductsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sku

> <SkusGetResponseBody> get_sku(sku_id)

Get SKU

Retrieve details of a SKU.

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

api_instance = VoucherifySdk::ProductsApi.new
sku_id = 'sku_id_example' # String | A Voucherify SKU identifier or SKU source ID.

begin
  # Get SKU
  result = api_instance.get_sku(sku_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->get_sku: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku_id** | **String** | A Voucherify SKU identifier or SKU source ID. |  |

### Return type

[**SkusGetResponseBody**](SkusGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_products_using_csv

> <ProductsImportCsvCreateResponseBody> import_products_using_csv(opts)

Import Products using CSV

Import products into the repository using a CSV file.   This API request starts a process that affects Voucherify data in bulk.  In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the IN_PROGRESS status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.  The result will return the async ID. You can verify the status of your request via this API request.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | File path.
}

begin
  # Import Products using CSV
  result = api_instance.import_products_using_csv(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_products_using_csv: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. | [optional] |

### Return type

[**ProductsImportCsvCreateResponseBody**](ProductsImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## import_skus_using_csv

> <SkusImportCsvCreateResponseBody> import_skus_using_csv(opts)

Import SKUs using CSV

Import SKUs into the repository using a CSV file. The CSV file has to include headers in the first line. All properties which cannot be mapped to standard SKU fields will be added to the metadata object. You can find an example template [here](https://s3.amazonaws.com/helpscout.net/docs/assets/5902f1c12c7d3a057f88a36d/attachments/627b98d08c9b585083488a4c/Import_SKUS_template.csv).  This API request starts a process that affects Voucherify data in bulk.  In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the IN_PROGRESS status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.  The result will return the async ID. You can verify the status of your request via this API request.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | File path.
}

begin
  # Import SKUs using CSV
  result = api_instance.import_skus_using_csv(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_skus_using_csv: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. | [optional] |

### Return type

[**SkusImportCsvCreateResponseBody**](SkusImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_products

> <ProductsListResponseBody> list_products(opts)

List Products

Retrieve a list of products.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
}

begin
  # List Products
  result = api_instance.list_products(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **start_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |
| **end_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |

### Return type

[**ProductsListResponseBody**](ProductsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_skus_in_product

> <ProductsSkusListResponseBody> list_skus_in_product(product_id, opts)

List SKUs in Product

Retrieve all SKUs for a given product.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A Voucherify product ID or product source ID.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
}

begin
  # List SKUs in Product
  result = api_instance.list_skus_in_product(product_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->list_skus_in_product: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or product source ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **start_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |
| **end_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |

### Return type

[**ProductsSkusListResponseBody**](ProductsSkusListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <ProductsUpdateResponseBody> update_product(product_id, opts)

Update Product

Updates the specified product by setting the values of the parameters passed in the request body. Any parameters not provided in the payload will be left unchanged.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A Voucherify product ID or source ID.
opts = {
  products_update_request_body: VoucherifySdk::ProductsUpdateRequestBody.new # ProductsUpdateRequestBody | Specify the parameters of the product that are to be updated.
}

begin
  # Update Product
  result = api_instance.update_product(product_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or source ID. |  |
| **products_update_request_body** | [**ProductsUpdateRequestBody**](ProductsUpdateRequestBody.md) | Specify the parameters of the product that are to be updated. | [optional] |

### Return type

[**ProductsUpdateResponseBody**](ProductsUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_products_in_bulk

> <ProductsUpdateInBulkResponseBody> update_products_in_bulk(opts)

Update Products in Bulk

Update products in one asynchronous operation. The request can include up to **10 MB** of data. The response returns a unique asynchronous action ID. Use this ID in the query paramater of the GET Async Action endpoint to check, e.g.: - The status of your request (in queue, in progress, done, or failed) - Resources that failed to be updated - The report file with details about the update If a product object is not found, it is **upserted**. This is shown in the report file in the **GET** Async Action endpoint. The upserted resources have value false in the found column and true in the updated column. This API request starts a process that affects Voucherify data in bulk. In the case of small jobs (like bulk update), the request is put into a queue and processed when every other bulk request placed in the queue prior to this request is finished.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  products_update_in_bulk_request_body: [VoucherifySdk::ProductsUpdateInBulkRequestBody.new] # Array<ProductsUpdateInBulkRequestBody> | List the product fields to be updated in each customer object.
}

begin
  # Update Products in Bulk
  result = api_instance.update_products_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_in_bulk: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_update_in_bulk_request_body** | [**Array&lt;ProductsUpdateInBulkRequestBody&gt;**](ProductsUpdateInBulkRequestBody.md) | List the product fields to be updated in each customer object. | [optional] |

### Return type

[**ProductsUpdateInBulkResponseBody**](ProductsUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_products_metadata_in_bulk

> <ProductsMetadataUpdateInBulkResponseBody> update_products_metadata_in_bulk(opts)

Update Products' Metadata in Bulk

Updates metadata parameters for a list of products. Every resource in the list will receive the metadata defined in the request. The request can include up to **10 MB** of data. The response returns a unique asynchronous action ID. Use this ID in the query paramater of the GET Async Action endpoint to check, e.g.: - The status of your request (in queue, in progress, done, or failed) - Resources that failed to be updated - The report file with details about the update If a product object is not found, it is **upserted**. This is shown in the report file in the **GET** Async Action endpoint. The upserted resources have value false in the found column and true in the updated column. This API request starts a process that affects Voucherify data in bulk. In the case of small jobs (like bulk update), the request is put into a queue and processed when every other bulk request placed in the queue prior to this request is finished.

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

api_instance = VoucherifySdk::ProductsApi.new
opts = {
  products_metadata_update_in_bulk_request_body: VoucherifySdk::ProductsMetadataUpdateInBulkRequestBody.new # ProductsMetadataUpdateInBulkRequestBody | List the source_ids of the products you would like to update with the metadata key/value pairs.
}

begin
  # Update Products' Metadata in Bulk
  result = api_instance.update_products_metadata_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_metadata_in_bulk: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_metadata_update_in_bulk_request_body** | [**ProductsMetadataUpdateInBulkRequestBody**](ProductsMetadataUpdateInBulkRequestBody.md) | List the source_ids of the products you would like to update with the metadata key/value pairs. | [optional] |

### Return type

[**ProductsMetadataUpdateInBulkResponseBody**](ProductsMetadataUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sku

> <ProductsSkusUpdateResponseBody> update_sku(product_id, sku_id, opts)

Update SKU

Updates the specified SKU by setting the values of the parameters passed in the request body. Any parameters not provided in the payload will be left unchanged. Fields other than the ones listed in the request body schema wont be modified. Even if provided, they will be silently skipped.

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

api_instance = VoucherifySdk::ProductsApi.new
product_id = 'product_id_example' # String | A unique Voucherify product ID or product source ID.
sku_id = 'sku_id_example' # String | A Voucherify SKU ID or SKU source ID.
opts = {
  products_skus_update_request_body: VoucherifySdk::ProductsSkusUpdateRequestBody.new # ProductsSkusUpdateRequestBody | Specify the parameters to be updated.
}

begin
  # Update SKU
  result = api_instance.update_sku(product_id, sku_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_sku: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A unique Voucherify product ID or product source ID. |  |
| **sku_id** | **String** | A Voucherify SKU ID or SKU source ID. |  |
| **products_skus_update_request_body** | [**ProductsSkusUpdateRequestBody**](ProductsSkusUpdateRequestBody.md) | Specify the parameters to be updated. | [optional] |

### Return type

[**ProductsSkusUpdateResponseBody**](ProductsSkusUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

