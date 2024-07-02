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
| [**update_products_in_bulk**](ProductsApi.md#update_products_in_bulk) | **POST** /v1/products/bulk/async | Update Products in bulk |
| [**update_products_metadata_in_bulk**](ProductsApi.md#update_products_metadata_in_bulk) | **POST** /v1/products/metadata/async | Update Products&#39; Metadata in bulk |
| [**update_sku**](ProductsApi.md#update_sku) | **PUT** /v1/products/{productId}/skus/{skuId} | Update SKU |


## create_product

> <ProductsCreateResponseBody> create_product(opts)

Create Product

Creates a product object.  <!-- theme: info -->  > 📘 Upsert Mode > > If you pass an `id` or a `source_id` that already exists in the product database, Voucherify will return a related product object with updated fields.

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

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsCreateResponseBody>, Integer, Hash)> create_product_with_http_info(opts)

```ruby
begin
  # Create Product
  data, status_code, headers = api_instance.create_product_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
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

This method adds product variants to a <!-- [created product](OpenAPI.json/paths/~1products/post) -->[created product](ref:create-product).   <!-- theme: info -->  > 📘 Upsert Mode > > If you pass an `id` or a `source_id` that already exists in the sku database, Voucherify will return a related sku object with updated fields.

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
product_id = 'product_id_example' # String | A Voucherify <!-- [product](OpenAPI.json/components/schemas/Product) -->[product](ref:get-product) ID or product source ID.
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

#### Using the create_sku_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsSkusCreateResponseBody>, Integer, Hash)> create_sku_with_http_info(product_id, opts)

```ruby
begin
  # Create SKU
  data, status_code, headers = api_instance.create_sku_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsSkusCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->create_sku_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify &lt;!-- [product](OpenAPI.json/components/schemas/Product) --&gt;[product](ref:get-product) ID or product source ID. |  |
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

Deletes a product and all related SKUs. This operation cannot be undone.   If the `force` parameter is set to `false` or not set at all, the product and all related SKUs will be moved to [the bin](ref:list-bin-entries).

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
  force: true # Boolean | If this flag is set to `true`, the product and all related SKUs will be removed permanently. If it is set to `false` or not set at all, the product and all related SKUs will be moved to the bin. Going forward, the user will be able to create another product with exactly the same `source_id`.
}

begin
  # Delete Product
  api_instance.delete_product(product_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_product_with_http_info(product_id, opts)

```ruby
begin
  # Delete Product
  data, status_code, headers = api_instance.delete_product_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify product ID or source ID. |  |
| **force** | **Boolean** | If this flag is set to &#x60;true&#x60;, the product and all related SKUs will be removed permanently. If it is set to &#x60;false&#x60; or not set at all, the product and all related SKUs will be moved to the bin. Going forward, the user will be able to create another product with exactly the same &#x60;source_id&#x60;. | [optional] |

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

Deletes a product SKU. This operation cannot be undone.   If the `force` parameter is set to `false` or not set at all, the SKU will be moved to [the bin](ref:list-bin-entries).

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
product_id = 'product_id_example' # String | A unique Voucherify <!-- [product](OpenAPI.json/components/schemas/Product) -->[product](ref:get-product) ID or product source ID.
sku_id = 'sku_id_example' # String | A Voucherify <!-- [SKU](OpenAPI.json/components/schemas/Sku) -->[SKU ID](ref:get-sku) or SKU source ID.
opts = {
  force: true # Boolean | If this flag is set to `true`, the SKU will be removed permanently. If it is set to `false` or not set at all, the SKU will be moved to the bin. Going forward, the user will be able to create another SKU with exactly the same `source_id`.
}

begin
  # Delete SKU
  api_instance.delete_sku(product_id, sku_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_sku: #{e}"
end
```

#### Using the delete_sku_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sku_with_http_info(product_id, sku_id, opts)

```ruby
begin
  # Delete SKU
  data, status_code, headers = api_instance.delete_sku_with_http_info(product_id, sku_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->delete_sku_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A unique Voucherify &lt;!-- [product](OpenAPI.json/components/schemas/Product) --&gt;[product](ref:get-product) ID or product source ID. |  |
| **sku_id** | **String** | A Voucherify &lt;!-- [SKU](OpenAPI.json/components/schemas/Sku) --&gt;[SKU ID](ref:get-sku) or SKU source ID. |  |
| **force** | **Boolean** | If this flag is set to &#x60;true&#x60;, the SKU will be removed permanently. If it is set to &#x60;false&#x60; or not set at all, the SKU will be moved to the bin. Going forward, the user will be able to create another SKU with exactly the same &#x60;source_id&#x60;. | [optional] |

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

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsGetResponseBody>, Integer, Hash)> get_product_with_http_info(product_id)

```ruby
begin
  # Get Product
  data, status_code, headers = api_instance.get_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
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

#### Using the get_sku_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SkusGetResponseBody>, Integer, Hash)> get_sku_with_http_info(sku_id)

```ruby
begin
  # Get SKU
  data, status_code, headers = api_instance.get_sku_with_http_info(sku_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SkusGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->get_sku_with_http_info: #{e}"
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

> <ProductsImportCsvCreateResponseBody> import_products_using_csv(file)

Import Products using CSV

Import products into the repository using a CSV file.    Curl Example <!-- title: \"Example Request\" lineNumbers: true --> ```cURL curl -X POST \\   https://api.voucherify.io/v1/products/importCSV \\   -F file=@/path/to/products.csv \\   -H \"X-App-Id: c70a6f00-cf91-4756-9df5-47628850002b\" \\   -H \"X-App-Token: 3266b9f8-e246-4f79-bdf0-833929b1380c\" ```  The CSV file has to include headers in the first line.  <!-- theme: info -->  > 📘 Standard product fields mapping > > - Create a **comma separated value (CSV) file** or download our CSV import template. You can find an example template [here](https://s3.amazonaws.com/helpscout.net/docs/assets/5902f1c12c7d3a057f88a36d/attachments/627b82ed68d51e779443f550/Import_products_template.csv). > - Supported CSV file headers: `name,source_id,price,attributes,image_url,Metadata_property_name` > - **Name** is a **required** field. The remaining fields in the CSV template are optional. > - Override/Update products' **names** in Voucherify using this method. Data will be updated for each product included in the CSV file whose **source_id** matches a source ID in Voucherify. No other data can be updated other than the product name. > - Note that dates and date-time attributes need to be provided in compliance with the **ISO 8601 norms**. For example, 2022-03-11T09:00:00.000Z or 2022-03-11 >    - `YYYY-MM-DD` >    - `YYYY-MM-DDTHH` >    - `YYYY-MM-DDTHH:mm` >    - `YYYY-MM-DDTHH:mm:ss` >    - `YYYY-MM-DDTHH:mm:ssZ` >    - `YYYY-MM-DDTHH:mm:ssZ` >    - `YYYY-MM-DDTHH:mm:ss.SSSZ` > - Columns that cannot be mapped to standard fields, will be mapped to **Custom attributes** and added as **products' metadata**. There is no limit on the number of custom attributes that you can import as metadata.  > - To provide the proper data type, you need to add all custom attributes to the metadata schema **before importing the file**. Read more [here](https://support.voucherify.io/article/99-schema-validation-metadata#add-metadata). > - **Product attributes** (not custom attributes) need to be separated by a comma and enclosed in double quotes, i.e \"attribute1,attribute2\". > - Headers with metadata names **can't contain white-space characters**. > - If you import metadata defined in the schema as **arrays (multiple)**, you need to separate each value using a comma, for example:   >    - array of strings: \"subscribed,premium\"   >    - array of numbers: \"123,234\".  >    - array of dates: \"2000-01-01,2000-01-02\"  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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
file = File.new('/path/to/some/file') # File | File path.

begin
  # Import Products using CSV
  result = api_instance.import_products_using_csv(file)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_products_using_csv: #{e}"
end
```

#### Using the import_products_using_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsImportCsvCreateResponseBody>, Integer, Hash)> import_products_using_csv_with_http_info(file)

```ruby
begin
  # Import Products using CSV
  data, status_code, headers = api_instance.import_products_using_csv_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsImportCsvCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_products_using_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. |  |

### Return type

[**ProductsImportCsvCreateResponseBody**](ProductsImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## import_skus_using_csv

> <SkusImportCsvCreateResponseBody> import_skus_using_csv(file)

Import SKUs using CSV

Import SKUs into the repository using a CSV file.  The CSV file has to include headers in the first line. All properties which cannot be mapped to standard SKU fields will be added to the metadata object. You can find an example template [here](https://s3.amazonaws.com/helpscout.net/docs/assets/5902f1c12c7d3a057f88a36d/attachments/627b98d08c9b585083488a4c/Import_SKUS_template.csv).   Curl Example <!-- title: \"Example Request\" lineNumbers: true --> ```cURL curl -X POST \\   https://api.voucherify.io/v1/skus/importCSV \\   -F file=@/path/to/skus.csv \\   -H \"X-App-Id: c70a6f00-cf91-4756-9df5-47628850002b\" \\   -H \"X-App-Token: 3266b9f8-e246-4f79-bdf0-833929b1380c\" ``` > 🚧 Import sequence > > First import products using the [dedicated endpoint](ref:import-products-using-csv), then import SKUs using this endpoint to properly match SKUs to products.  <!-- theme: info -->  > 📘 Standard SKU fields mapping > > - **Required** fields are `source_id` and `product_id`. > - Supported CSV file headers: `product_id,sku,source_id,price,image_url,attributes` > - SKU **source_id** must be unique in the entire product catalog, no duplicates are allowed. > - SKU attributes need to be in the form of a stringy-fied json, i.e.`\"{'color':'blue'}\"`. These attributes must be defined in the **product** beforehand so you can import them to the SKU. > - You can use this method to update the following parameters in bulk: **sku** and the sku **price**. > - Columns that cannot be mapped to standard fields will be mapped to Custom attributes and added as product metadata. There is no limit on the number of custom attributes that you can import as metadata.  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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
file = File.new('/path/to/some/file') # File | File path.

begin
  # Import SKUs using CSV
  result = api_instance.import_skus_using_csv(file)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_skus_using_csv: #{e}"
end
```

#### Using the import_skus_using_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SkusImportCsvCreateResponseBody>, Integer, Hash)> import_skus_using_csv_with_http_info(file)

```ruby
begin
  # Import SKUs using CSV
  data, status_code, headers = api_instance.import_skus_using_csv_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SkusImportCsvCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->import_skus_using_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. |  |

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
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
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

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsListResponseBody>, Integer, Hash)> list_products_with_http_info(opts)

```ruby
begin
  # List Products
  data, status_code, headers = api_instance.list_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
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
product_id = 'product_id_example' # String | A Voucherify <!-- [product](OpenAPI.json/components/schemas/Product) -->[product](ref:get-product) ID or product source ID.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
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

#### Using the list_skus_in_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsSkusListResponseBody>, Integer, Hash)> list_skus_in_product_with_http_info(product_id, opts)

```ruby
begin
  # List SKUs in Product
  data, status_code, headers = api_instance.list_skus_in_product_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsSkusListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->list_skus_in_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A Voucherify &lt;!-- [product](OpenAPI.json/components/schemas/Product) --&gt;[product](ref:get-product) ID or product source ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
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

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsUpdateResponseBody>, Integer, Hash)> update_product_with_http_info(product_id, opts)

```ruby
begin
  # Update Product
  data, status_code, headers = api_instance.update_product_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
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

Update Products in bulk

Update several products in one asynchronous operation.   In one request, it is possible to update a maximum of **100** records. In the response body, you get a unique async action identifier. If a requested product object is not found, then an **upsert** occurs. This is reflected in the <!-- [Get Async Action](OpenAPI.json/paths/~1async-actions~1{asyncActionId}/get) -->[Get Async Action](ref:get-async-action) endpoint as follows:    <!-- title: \"Response\" lineNumbers: true --> ```json {     \"found\": false,     \"updated\": true } ```  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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
  products_update_in_bulk_request_body: [VoucherifySdk::ProductsUpdateInBulkRequestBody.new({source_id: 'test_prod_id_1'})] # Array<ProductsUpdateInBulkRequestBody> | Create an array of product objects, each with the parameters which you want to update.
}

begin
  # Update Products in bulk
  result = api_instance.update_products_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_in_bulk: #{e}"
end
```

#### Using the update_products_in_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsUpdateInBulkResponseBody>, Integer, Hash)> update_products_in_bulk_with_http_info(opts)

```ruby
begin
  # Update Products in bulk
  data, status_code, headers = api_instance.update_products_in_bulk_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsUpdateInBulkResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_in_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_update_in_bulk_request_body** | [**Array&lt;ProductsUpdateInBulkRequestBody&gt;**](ProductsUpdateInBulkRequestBody.md) | Create an array of product objects, each with the parameters which you want to update. | [optional] |

### Return type

[**ProductsUpdateInBulkResponseBody**](ProductsUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_products_metadata_in_bulk

> <ProductsMetadataUpdateInBulkResponseBody> update_products_metadata_in_bulk(opts)

Update Products' Metadata in bulk

Update several product metadata properties in one asynchronous operation.   In one request, it is possible to update a maximum of **100** records. In the response body, you get a unique async action identifier. If a requested product object is not found, then an **upsert** occurs. This is reflected in the <!-- [Get Async Action](OpenAPI.json/paths/~1async-actions~1{asyncActionId}/get) -->[Get Async Action](ref:get-async-action) endpoint as follows:    <!-- title: \"Response\" lineNumbers: true --> ```json {     \"found\": false,     \"updated\": true } ```  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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
  products_metadata_update_in_bulk_request_body: VoucherifySdk::ProductsMetadataUpdateInBulkRequestBody.new({source_ids: ['source_ids_example'], metadata: 3.56}) # ProductsMetadataUpdateInBulkRequestBody | Specify the list of product source IDs and the metadata key value pairs to be udpated for these products.
}

begin
  # Update Products' Metadata in bulk
  result = api_instance.update_products_metadata_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_metadata_in_bulk: #{e}"
end
```

#### Using the update_products_metadata_in_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsMetadataUpdateInBulkResponseBody>, Integer, Hash)> update_products_metadata_in_bulk_with_http_info(opts)

```ruby
begin
  # Update Products' Metadata in bulk
  data, status_code, headers = api_instance.update_products_metadata_in_bulk_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsMetadataUpdateInBulkResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_products_metadata_in_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_metadata_update_in_bulk_request_body** | [**ProductsMetadataUpdateInBulkRequestBody**](ProductsMetadataUpdateInBulkRequestBody.md) | Specify the list of product source IDs and the metadata key value pairs to be udpated for these products. | [optional] |

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

Updates the specified SKU by setting the values of the parameters passed in the request body. Any parameters not provided in the payload will be left unchanged.  Fields other than the ones listed in the request body schema won't be modified. Even if provided, they will be silently skipped.

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
product_id = 'product_id_example' # String | A unique Voucherify <!-- [product](OpenAPI.json/components/schemas/Product) -->[product](ref:get-product) ID or product source ID.
sku_id = 'sku_id_example' # String | A Voucherify <!-- [SKU](OpenAPI.json/components/schemas/Sku) -->[SKU ID](ref:get-sku) or SKU source ID.
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

#### Using the update_sku_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductsSkusUpdateResponseBody>, Integer, Hash)> update_sku_with_http_info(product_id, sku_id, opts)

```ruby
begin
  # Update SKU
  data, status_code, headers = api_instance.update_sku_with_http_info(product_id, sku_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductsSkusUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ProductsApi->update_sku_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A unique Voucherify &lt;!-- [product](OpenAPI.json/components/schemas/Product) --&gt;[product](ref:get-product) ID or product source ID. |  |
| **sku_id** | **String** | A Voucherify &lt;!-- [SKU](OpenAPI.json/components/schemas/Sku) --&gt;[SKU ID](ref:get-sku) or SKU source ID. |  |
| **products_skus_update_request_body** | [**ProductsSkusUpdateRequestBody**](ProductsSkusUpdateRequestBody.md) | Specify the parameters to be updated. | [optional] |

### Return type

[**ProductsSkusUpdateResponseBody**](ProductsSkusUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

