# VoucherifySdk::CustomersApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /v1/customers | Create Customer |
| [**customer_permanently_deletion**](CustomersApi.md#customer_permanently_deletion) | **POST** /v1/customers/{customerId}/permanent-deletion | Delete Customer Permanently |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /v1/customers/{customerId} | Delete Customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v1/customers/{customerId} | Get Customer |
| [**import_customers_using_csv**](CustomersApi.md#import_customers_using_csv) | **POST** /v1/customers/importCSV | Import and Update Customers using CSV |
| [**list_customer_activities**](CustomersApi.md#list_customer_activities) | **GET** /v1/customers/{customerId}/activities | List Customer Activities |
| [**list_customer_segments**](CustomersApi.md#list_customer_segments) | **GET** /v1/customers/{customerId}/segments | List Customer&#39;s Segments |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /v1/customers | List Customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PUT** /v1/customers/{customerId} | Update Customer |
| [**update_customers_consents**](CustomersApi.md#update_customers_consents) | **PUT** /v1/customers/{customerId}/consents | Update Customer&#39;s consents |
| [**update_customers_in_bulk**](CustomersApi.md#update_customers_in_bulk) | **POST** /v1/customers/bulk/async | Update Customers in bulk |
| [**update_customers_metadata_in_bulk**](CustomersApi.md#update_customers_metadata_in_bulk) | **POST** /v1/customers/metadata/async | Update Customers&#39; Metadata in bulk |


## create_customer

> <CustomersCreateResponseBody> create_customer(opts)

Create Customer

Creates a customer object.  <!-- theme: info -->  > 📘 Upsert Mode > > If you pass an `id` or a `source_id` that already exists in the customer database, Voucherify will return a related customer object with updated fields.

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

api_instance = VoucherifySdk::CustomersApi.new
opts = {
  customers_create_request_body: VoucherifySdk::CustomersCreateRequestBody.new # CustomersCreateRequestBody | Create a customer with specified parameters.
}

begin
  # Create Customer
  result = api_instance.create_customer(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersCreateResponseBody>, Integer, Hash)> create_customer_with_http_info(opts)

```ruby
begin
  # Create Customer
  data, status_code, headers = api_instance.create_customer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_create_request_body** | [**CustomersCreateRequestBody**](CustomersCreateRequestBody.md) | Create a customer with specified parameters. | [optional] |

### Return type

[**CustomersCreateResponseBody**](CustomersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customer_permanently_deletion

> <CustomersPermanentDeletionCreateResponseBody> customer_permanently_deletion(customer_id)

Delete Customer Permanently

The organization user can remove consumer data permanently from the Voucherify system by using this API method. It d​eletes all customer data and connected resources. It makes the customer profile forgotten by Voucherify.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer's `id` or `source_id`.

begin
  # Delete Customer Permanently
  result = api_instance.customer_permanently_deletion(customer_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->customer_permanently_deletion: #{e}"
end
```

#### Using the customer_permanently_deletion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersPermanentDeletionCreateResponseBody>, Integer, Hash)> customer_permanently_deletion_with_http_info(customer_id)

```ruby
begin
  # Delete Customer Permanently
  data, status_code, headers = api_instance.customer_permanently_deletion_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersPermanentDeletionCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->customer_permanently_deletion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer&#39;s &#x60;id&#x60; or &#x60;source_id&#x60;. |  |

### Return type

[**CustomersPermanentDeletionCreateResponseBody**](CustomersPermanentDeletionCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_customer

> delete_customer(customer_id)

Delete Customer

This method deletes a customer.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer's `id` or `source_id`.

begin
  # Delete Customer
  api_instance.delete_customer(customer_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_customer_with_http_info(customer_id)

```ruby
begin
  # Delete Customer
  data, status_code, headers = api_instance.delete_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer&#39;s &#x60;id&#x60; or &#x60;source_id&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_customer

> <CustomersGetResponseBody> get_customer(customer_id)

Get Customer

Retrieve customer details.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer's `id` or `source_id`.

begin
  # Get Customer
  result = api_instance.get_customer(customer_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersGetResponseBody>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # Get Customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer&#39;s &#x60;id&#x60; or &#x60;source_id&#x60;. |  |

### Return type

[**CustomersGetResponseBody**](CustomersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_customers_using_csv

> <CustomersImportCsvCreateResponseBody> import_customers_using_csv(file)

Import and Update Customers using CSV

This API method lets you import or update customer data. To get a proper and valid response, please send a CSV file with data separated by commas.    ## Request Example <!-- title: \"Example Request\" lineNumbers: true --> ```cURL curl -X POST \\   https://api.voucherify.io/v1/customers/importCSV \\   -F file=@/path/to/customers.csv \\   -H \"X-App-Id: c70a6f00-cf91-4756-9df5-47628850002b\" \\   -H \"X-App-Token: 3266b9f8-e246-4f79-bdf0-833929b1380c\" ``` ## CSV File Format  The CSV file has to include headers in the first line. All properties which cannot be mapped to standard customer fields will be added to the metadata object.  <!-- theme: info --> > 📘 Standard customer fields mapping > > **No spaces allowed in field names**   > Id, Name, Email, Phone, Birthdate, Source_id, Address_line_1, Address_line_2, Address_Postal_Code, Address_City, Address_State, Address_Country, Description, Metadata_name_1, Metadata_name_2  ## Update Customers using CSV  If you would like to update customer's data, you can do it using the CSV file with new data. However, remember to include a `source_id` in your CSV file to manage the update successfully.  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CustomersApi.new
file = File.new('/path/to/some/file') # File | File path.

begin
  # Import and Update Customers using CSV
  result = api_instance.import_customers_using_csv(file)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->import_customers_using_csv: #{e}"
end
```

#### Using the import_customers_using_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersImportCsvCreateResponseBody>, Integer, Hash)> import_customers_using_csv_with_http_info(file)

```ruby
begin
  # Import and Update Customers using CSV
  data, status_code, headers = api_instance.import_customers_using_csv_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersImportCsvCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->import_customers_using_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. |  |

### Return type

[**CustomersImportCsvCreateResponseBody**](CustomersImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_customer_activities

> <CustomersActivitiesListResponseBody> list_customer_activities(customer_id, opts)

List Customer Activities

> ❗️ Deprecated   > > This endpoint represents the deprecated version of the API responsible for listing customer activities and we do not recommend using it. Developers are encouraged to migrate to the latest version to take advantage of the latest enhancements and bug fixes. No updates will be provided to the deprecated endpoint.  Retrieve customer activities.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer's `id` or source ID of the customer who performed the activities.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
  starting_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | A cursor for pagination. `starting_after` is a date-time value that defines your place in the list based on `created_at` property from the activity object. For instance, if you make a list request and receive 100 objects, ending with an object created at `2020-05-24T13:43:09.024Z`, your subsequent call can include `starting_after=2020-05-24T13:43:09.024Z` in order to fetch the next page of the list.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  campaign_type: VoucherifySdk::ParameterCampaignType::PROMOTION, # ParameterCampaignType | Through this parameter you can control a type of campaign by which Voucherify will filter related customer's activity. API will return only records related to that given type. Allowed values: DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM
  campaign_id: 'campaign_id_example', # String | By applying this parameter you request only events related to specific campaign identified by its ID.
  product_id: 'product_id_example', # String | By applying this parameter you request only events related to specific product identified by its ID.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
}

begin
  # List Customer Activities
  result = api_instance.list_customer_activities(customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_activities: #{e}"
end
```

#### Using the list_customer_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersActivitiesListResponseBody>, Integer, Hash)> list_customer_activities_with_http_info(customer_id, opts)

```ruby
begin
  # List Customer Activities
  data, status_code, headers = api_instance.list_customer_activities_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersActivitiesListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer&#39;s &#x60;id&#x60; or source ID of the customer who performed the activities. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | A cursor for pagination. &#x60;starting_after&#x60; is a date-time value that defines your place in the list based on &#x60;created_at&#x60; property from the activity object. For instance, if you make a list request and receive 100 objects, ending with an object created at &#x60;2020-05-24T13:43:09.024Z&#x60;, your subsequent call can include &#x60;starting_after&#x3D;2020-05-24T13:43:09.024Z&#x60; in order to fetch the next page of the list. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **campaign_type** | [**ParameterCampaignType**](.md) | Through this parameter you can control a type of campaign by which Voucherify will filter related customer&#39;s activity. API will return only records related to that given type. Allowed values: DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM | [optional] |
| **campaign_id** | **String** | By applying this parameter you request only events related to specific campaign identified by its ID. | [optional] |
| **product_id** | **String** | By applying this parameter you request only events related to specific product identified by its ID. | [optional] |
| **start_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |
| **end_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |

### Return type

[**CustomersActivitiesListResponseBody**](CustomersActivitiesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customer_segments

> <CustomersSegmentsListResponseBody> list_customer_segments(customer_id)

List Customer's Segments

Returns the list of segments IDs to which the customer belongs to.    If you pass a `customerId` which is not stored and recognized by Voucherify as an existing customer in the system, the response will generate a list of segments that the customer would potentialy qualify for if they were to become a customer tracked in the system.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | Unique identifier of a customer represented by an internal customer ID or customer source ID.

begin
  # List Customer's Segments
  result = api_instance.list_customer_segments(customer_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_segments: #{e}"
end
```

#### Using the list_customer_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersSegmentsListResponseBody>, Integer, Hash)> list_customer_segments_with_http_info(customer_id)

```ruby
begin
  # List Customer's Segments
  data, status_code, headers = api_instance.list_customer_segments_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersSegmentsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique identifier of a customer represented by an internal customer ID or customer source ID. |  |

### Return type

[**CustomersSegmentsListResponseBody**](CustomersSegmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <CustomersListResponseBody> list_customers(opts)

List Customers

Returns a list of customers.

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

api_instance = VoucherifySdk::CustomersApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  email: 'email_example', # String | Limit the customers to the ones that have this specific email address.
  city: 'city_example', # String | Limit the customers to the ones that are located in the specified city.
  name: 'name_example', # String | Filter customers by the name property.
  segment_id: 'segment_id_example', # String | Filter customers by the segment id.
  created_at_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was created.
  created_at_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was created.
  updated_at_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was updated last time.
  updated_at_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was updated last time.
  order: VoucherifySdk::ParameterOrderListCustomers::CREATED_AT, # ParameterOrderListCustomers | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
  starting_after: Time.parse('2013-10-20T19:20:30+01:00') # Time | A cursor for pagination. This is a date-time value that defines your place in the list based on `created_at` property from the customer object. For instance, if you make a list request and receive 100 objects, ending with an object created at `2020-05-24T13:43:09.024Z`, your subsequent call can include `starting_after=2020-05-24T13:43:09.024Z` in order to fetch the next page of the list.  <!-- title: Options --> | **Option** | **Format** | **Sorting** | |:---|:---|:---| | Return customers **before** a specific creation date  | - set `starting_after` parameter to the breakpoint date | Sorting order is **descending**; the most recent dates first and least recent dates last. | | Return customers **after** a specific create or update date | - include the `order` parameter set to `created_at` or `updated_at`<br>- set `starting_after` to the breakpoint date | Sorting order is **ascending**; the least recent dates first and the most recent dates last. | 
}

begin
  # List Customers
  result = api_instance.list_customers(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersListResponseBody>, Integer, Hash)> list_customers_with_http_info(opts)

```ruby
begin
  # List Customers
  data, status_code, headers = api_instance.list_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **email** | **String** | Limit the customers to the ones that have this specific email address. | [optional] |
| **city** | **String** | Limit the customers to the ones that are located in the specified city. | [optional] |
| **name** | **String** | Filter customers by the name property. | [optional] |
| **segment_id** | **String** | Filter customers by the segment id. | [optional] |
| **created_at_before** | **Time** | Filter customers by date customer was created. | [optional] |
| **created_at_after** | **Time** | Filter customers by date customer was created. | [optional] |
| **updated_at_before** | **Time** | Filter customers by date customer was updated last time. | [optional] |
| **updated_at_after** | **Time** | Filter customers by date customer was updated last time. | [optional] |
| **order** | [**ParameterOrderListCustomers**](.md) | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | A cursor for pagination. This is a date-time value that defines your place in the list based on &#x60;created_at&#x60; property from the customer object. For instance, if you make a list request and receive 100 objects, ending with an object created at &#x60;2020-05-24T13:43:09.024Z&#x60;, your subsequent call can include &#x60;starting_after&#x3D;2020-05-24T13:43:09.024Z&#x60; in order to fetch the next page of the list.  &lt;!-- title: Options --&gt; | **Option** | **Format** | **Sorting** | |:---|:---|:---| | Return customers **before** a specific creation date  | - set &#x60;starting_after&#x60; parameter to the breakpoint date | Sorting order is **descending**; the most recent dates first and least recent dates last. | | Return customers **after** a specific create or update date | - include the &#x60;order&#x60; parameter set to &#x60;created_at&#x60; or &#x60;updated_at&#x60;&lt;br&gt;- set &#x60;starting_after&#x60; to the breakpoint date | Sorting order is **ascending**; the least recent dates first and the most recent dates last. |  | [optional] |

### Return type

[**CustomersListResponseBody**](CustomersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <CustomersUpdateResponseBody> update_customer(customer_id, opts)

Update Customer

Updates the specified customer by setting the values of the parameters passed in the request body. Any parameters not provided in the payload will be left unchanged.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer's `id` or `source_id`.
opts = {
  customers_update_request_body: VoucherifySdk::CustomersUpdateRequestBody.new # CustomersUpdateRequestBody | Specify the parameters to be updated.
}

begin
  # Update Customer
  result = api_instance.update_customer(customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersUpdateResponseBody>, Integer, Hash)> update_customer_with_http_info(customer_id, opts)

```ruby
begin
  # Update Customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer&#39;s &#x60;id&#x60; or &#x60;source_id&#x60;. |  |
| **customers_update_request_body** | [**CustomersUpdateRequestBody**](CustomersUpdateRequestBody.md) | Specify the parameters to be updated. | [optional] |

### Return type

[**CustomersUpdateResponseBody**](CustomersUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers_consents

> update_customers_consents(customer_id, opts)

Update Customer's consents

Update marketing permissions for the specified customer.

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

api_instance = VoucherifySdk::CustomersApi.new
customer_id = 'customer_id_example' # String | A Voucherify unique customer identifier or source ID.
opts = {
  body: { ... } # Object | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use \"unsubscribed\" as a consent identifier and \"true\" as its value.    #### Examples  <!-- title: \"Request Body\" lineNumbers: true --> ```json {     \"cnst_aIdUulAh0SCsOCaS3005y7yS\": true,     \"cnst_aIdUulAhwewqaS31213fdsfds\": false } ```  Opt-out from all communication:  <!-- title: \"Request Body\" lineNumbers: true --> ```json {     \"unsubscribed\": true } ```
}

begin
  # Update Customer's consents
  api_instance.update_customers_consents(customer_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_consents: #{e}"
end
```

#### Using the update_customers_consents_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customers_consents_with_http_info(customer_id, opts)

```ruby
begin
  # Update Customer's consents
  data, status_code, headers = api_instance.update_customers_consents_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_consents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify unique customer identifier or source ID. |  |
| **body** | **Object** | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use \&quot;unsubscribed\&quot; as a consent identifier and \&quot;true\&quot; as its value.    #### Examples  &lt;!-- title: \&quot;Request Body\&quot; lineNumbers: true --&gt; &#x60;&#x60;&#x60;json {     \&quot;cnst_aIdUulAh0SCsOCaS3005y7yS\&quot;: true,     \&quot;cnst_aIdUulAhwewqaS31213fdsfds\&quot;: false } &#x60;&#x60;&#x60;  Opt-out from all communication:  &lt;!-- title: \&quot;Request Body\&quot; lineNumbers: true --&gt; &#x60;&#x60;&#x60;json {     \&quot;unsubscribed\&quot;: true } &#x60;&#x60;&#x60; | [optional] |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_customers_in_bulk

> <CustomersUpdateInBulkResponseBody> update_customers_in_bulk(opts)

Update Customers in bulk

Update several customers in one asynchronous operation.   In one request, it is possible to update a maximum of **100** records. In the response body, you get a unique async action identifier.    If a requested customer object is not found, then an **upsert** occurs. This is reflected in the <!-- [Get Async Action](OpenAPI.json/paths/~1async-actions~1{asyncActionId}/get) -->[Get Async Action](ref:get-async-action) endpoint as follows:    <!-- title: \"Response\" lineNumbers: true --> ```json {     \"found\": false,     \"updated\": true } ```  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CustomersApi.new
opts = {
  customers_update_in_bulk_request_body: [VoucherifySdk::CustomersUpdateInBulkRequestBody.new({source_id: 'source_id_example'})] # Array<CustomersUpdateInBulkRequestBody> | Specify the customer fields that you would like to update in each customer object.
}

begin
  # Update Customers in bulk
  result = api_instance.update_customers_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_in_bulk: #{e}"
end
```

#### Using the update_customers_in_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersUpdateInBulkResponseBody>, Integer, Hash)> update_customers_in_bulk_with_http_info(opts)

```ruby
begin
  # Update Customers in bulk
  data, status_code, headers = api_instance.update_customers_in_bulk_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersUpdateInBulkResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_in_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_update_in_bulk_request_body** | [**Array&lt;CustomersUpdateInBulkRequestBody&gt;**](CustomersUpdateInBulkRequestBody.md) | Specify the customer fields that you would like to update in each customer object. | [optional] |

### Return type

[**CustomersUpdateInBulkResponseBody**](CustomersUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers_metadata_in_bulk

> <CustomersMetadataUpdateInBulkResponseBody> update_customers_metadata_in_bulk(opts)

Update Customers' Metadata in bulk

Update several customers metadata properties in one asynchronous operation.   In one request, it is possible to update a maximum of **100** records. In the response body, you get a unique async action identifier.    If a requested customer object is not found, then an **upsert** occurs. This is reflected in the <!-- [Get Async Action](OpenAPI.json/paths/~1async-actions~1{asyncActionId}/get) -->[Get Async Action](ref:get-async-action) endpoint as follows:    <!-- title: \"Response\" lineNumbers: true --> ```json {     \"found\": false,     \"updated\": true } ```  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CustomersApi.new
opts = {
  customers_metadata_update_in_bulk_request_body: VoucherifySdk::CustomersMetadataUpdateInBulkRequestBody.new({source_ids: ['source_ids_example'], metadata: 3.56}) # CustomersMetadataUpdateInBulkRequestBody | List the `source_ids` of the customer's you would like to update along with the metadata key value pairs.
}

begin
  # Update Customers' Metadata in bulk
  result = api_instance.update_customers_metadata_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_metadata_in_bulk: #{e}"
end
```

#### Using the update_customers_metadata_in_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersMetadataUpdateInBulkResponseBody>, Integer, Hash)> update_customers_metadata_in_bulk_with_http_info(opts)

```ruby
begin
  # Update Customers' Metadata in bulk
  data, status_code, headers = api_instance.update_customers_metadata_in_bulk_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersMetadataUpdateInBulkResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_metadata_in_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_metadata_update_in_bulk_request_body** | [**CustomersMetadataUpdateInBulkRequestBody**](CustomersMetadataUpdateInBulkRequestBody.md) | List the &#x60;source_ids&#x60; of the customer&#39;s you would like to update along with the metadata key value pairs. | [optional] |

### Return type

[**CustomersMetadataUpdateInBulkResponseBody**](CustomersMetadataUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

