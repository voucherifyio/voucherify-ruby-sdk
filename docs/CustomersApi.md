# VoucherifySdk::CustomersApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /v1/customers | Create Customer |
| [**customer_permanently_deletion**](CustomersApi.md#customer_permanently_deletion) | **POST** /v1/customers/{customerId}/permanent-deletion | Delete Customer Permanently |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /v1/customers/{customerId} | Delete Customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v1/customers/{customerId} | Get Customer |
| [**import_customers_using_csv**](CustomersApi.md#import_customers_using_csv) | **POST** /v1/customers/importCSV | Import and Update Customers using CSV |
| [**list_customer_activities**](CustomersApi.md#list_customer_activities) | **GET** /v1/customers/{customerId}/activities | List Customer Activities [Deprecated] |
| [**list_customer_activity**](CustomersApi.md#list_customer_activity) | **GET** /v1/customers/{customerId}/activity | List Customer Activity |
| [**list_customer_redeemables**](CustomersApi.md#list_customer_redeemables) | **GET** /v1/customers/{customerId}/redeemables | List Customer&#39;s Redeemables |
| [**list_customer_segments**](CustomersApi.md#list_customer_segments) | **GET** /v1/customers/{customerId}/segments | List Customer&#39;s Segments |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /v1/customers | List Customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PUT** /v1/customers/{customerId} | Update Customer |
| [**update_customers_in_bulk**](CustomersApi.md#update_customers_in_bulk) | **POST** /v1/customers/bulk/async | Update Customers in Bulk |
| [**update_customers_metadata_in_bulk**](CustomersApi.md#update_customers_metadata_in_bulk) | **POST** /v1/customers/metadata/async | Update Customers&#39; Metadata in Bulk |


## create_customer

> <CustomersCreateResponseBody> create_customer(opts)

Create Customer

Creates a customer object.  📘 Upsert Mode  If you pass an id or a source_id that already exists in the customer database, Voucherify will return a related customer object with updated fields.

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

The organization user can remove consumer data permanently from the Voucherify system by using this API method. It deletes all customer data and connected resources. It makes the customer profile forgotten by Voucherify.

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source_id.

begin
  # Delete Customer Permanently
  result = api_instance.customer_permanently_deletion(customer_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->customer_permanently_deletion: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source_id. |  |

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source_id.

begin
  # Delete Customer
  api_instance.delete_customer(customer_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source_id. |  |

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source_id.

begin
  # Get Customer
  result = api_instance.get_customer(customer_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source_id. |  |

### Return type

[**CustomersGetResponseBody**](CustomersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_customers_using_csv

> <CustomersImportCsvCreateResponseBody> import_customers_using_csv(opts)

Import and Update Customers using CSV

This API method lets you import or update customer data. To get a proper and valid response, please send a CSV file with data separated by commas.   # Request Example # CSV File Format The CSV file has to include headers in the first line. All properties which cannot be mapped to standard customer fields will be added to the metadata object.  📘 Standard customer fields mapping  **No spaces allowed in field names**    Id, Name, Email, Phone, Birthdate, Source_id, Address_line_1, Address_line_2, Address_Postal_Code, Address_City, Address_State, Address_Country, Description, Metadata_name_1, Metadata_name_2 # Update Customers using CSV If you would like to update customers data, you can do it using the CSV file with new data. However, remember to include a source_id in your CSV file to manage the update successfully. This API request starts a process that affects Voucherify data in bulk.  In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the IN_PROGRESS status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.  The result will return the async ID. You can verify the status of your request via this API request.

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
  file: File.new('/path/to/some/file') # File | File path.
}

begin
  # Import and Update Customers using CSV
  result = api_instance.import_customers_using_csv(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->import_customers_using_csv: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. | [optional] |

### Return type

[**CustomersImportCsvCreateResponseBody**](CustomersImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_customer_activities

> <CustomersActivitiesListResponseBody> list_customer_activities(customer_id, opts)

List Customer Activities [Deprecated]

> ❗️ Deprecated    This endpoint represents the deprecated version of the API responsible for listing customer activities and we do not recommend using it. Developers are encouraged to migrate to the latest version to take advantage of the latest enhancements and bug fixes. No updates will be provided to the deprecated endpoint. Retrieve customer activities.

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source ID of the customer who performed the activities.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrder::CREATED_AT, # ParameterOrder | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | A cursor for pagination. starting_after is a date-time value that defines your place in the list based on created_at property from the activity object. For instance, if you make a list request and receive 100 objects, ending with an object created at 2020-05-24T13:43:09.024Z, your subsequent call can include starting_after 2020-05-24T13:43:09.024Z in order to fetch the next page of the list.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  campaign_type: VoucherifySdk::ParameterCampaignType::PROMOTION, # ParameterCampaignType | Through this parameter you can control a type of campaign by which Voucherify will filter related customers activity. API will return only records related to that given type. Allowed values: DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM
  campaign_id: 'campaign_id_example', # String | By applying this parameter you request only events related to specific campaign identified by its ID.
  product_id: 'product_id_example', # String | By applying this parameter you request only events related to specific product identified by its ID.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
}

begin
  # List Customer Activities [Deprecated]
  result = api_instance.list_customer_activities(customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_activities: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source ID of the customer who performed the activities. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrder**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | A cursor for pagination. starting_after is a date-time value that defines your place in the list based on created_at property from the activity object. For instance, if you make a list request and receive 100 objects, ending with an object created at 2020-05-24T13:43:09.024Z, your subsequent call can include starting_after 2020-05-24T13:43:09.024Z in order to fetch the next page of the list. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **campaign_type** | [**ParameterCampaignType**](.md) | Through this parameter you can control a type of campaign by which Voucherify will filter related customers activity. API will return only records related to that given type. Allowed values: DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM | [optional] |
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


## list_customer_activity

> <CustomersActivityListResponseBody> list_customer_activity(customer_id, opts)

List Customer Activity

Retrieve customer activities.

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source ID of the customer who performed the activities.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderCreatedAt::CREATED_AT, # ParameterOrderCreatedAt | Apply this filter to order the events according the date and time when it was created. 
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must begin on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
  campaign_id: 'campaign_id_example', # String | Requests only events related to specific campaign identified by its ID.
  campaign_type: VoucherifySdk::ParameterCampaignType::PROMOTION, # ParameterCampaignType | Filters related customers activity for the selected campaign types. Allowed values:  DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM.
  category: VoucherifySdk::ParameterActivityCategory::ACTION, # ParameterActivityCategory | Filters activities for actions or effects. Allowed values:  ACTION, EFFECT.
  type: 'type_example' # String | Event name of the customer event.
}

begin
  # List Customer Activity
  result = api_instance.list_customer_activity(customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_activity: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source ID of the customer who performed the activities. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderCreatedAt**](.md) | Apply this filter to order the events according the date and time when it was created.  | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **start_date** | **Time** | Timestamp representing the date and time which results must begin on. Represented in ISO 8601 format. | [optional] |
| **end_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |
| **campaign_id** | **String** | Requests only events related to specific campaign identified by its ID. | [optional] |
| **campaign_type** | [**ParameterCampaignType**](.md) | Filters related customers activity for the selected campaign types. Allowed values:  DISCOUNT_COUPONS, REFERRAL_PROGRAM, GIFT_VOUCHERS, PROMOTION, LOYALTY_PROGRAM. | [optional] |
| **category** | [**ParameterActivityCategory**](.md) | Filters activities for actions or effects. Allowed values:  ACTION, EFFECT. | [optional] |
| **type** | **String** | Event name of the customer event. | [optional] |

### Return type

[**CustomersActivityListResponseBody**](CustomersActivityListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customer_redeemables

> <CustomersRedeemablesListResponseBody> list_customer_redeemables(customer_id, opts)

List Customer's Redeemables

Retrieves all the redeemables that have been assigned to the customer. To use this endpoint, you must have the following permissions: - Read Customers (customers.details.read)

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
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListRedeemables::ID, # ParameterOrderListRedeemables | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  filters: VoucherifySdk::ParameterFiltersListCustomerRedeemables.new # ParameterFiltersListCustomerRedeemables | Filters for listing customer redeemables.
}

begin
  # List Customer's Redeemables
  result = api_instance.list_customer_redeemables(customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customer_redeemables: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique identifier of a customer represented by an internal customer ID or customer source ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListRedeemables**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **filters** | [**ParameterFiltersListCustomerRedeemables**](.md) | Filters for listing customer redeemables. | [optional] |

### Return type

[**CustomersRedeemablesListResponseBody**](CustomersRedeemablesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customer_segments

> <CustomersSegmentsListResponseBody> list_customer_segments(customer_id)

List Customer's Segments

Returns the list of segments IDs to which the customer belongs to.   If you pass a customerId which is not stored and recognized by Voucherify as an existing customer in the system, the response will generate a list of segments that the customer would potentialy qualify for if they were to become a customer tracked in the system.

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
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  email: 'email_example', # String | Limit the customers to the ones that have this specific email address.
  city: 'city_example', # String | Limit the customers to the ones that are located in the specified city.
  name: 'name_example', # String | Filter customers by the name property.
  segment_id: 'segment_id_example', # String | Filter customers by the segment id.
  created_at_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was created.
  created_at_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was created.
  updated_at_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was updated last time.
  updated_at_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter customers by date customer was updated last time.
  order: VoucherifySdk::ParameterOrderListCustomers::CREATED_AT, # ParameterOrderListCustomers | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after: Time.parse('2013-10-20T19:20:30+01:00') # Time | A cursor for pagination. This is a date-time value that defines your place in the list based on created_at property from the customer object. For instance, if you make a list request and receive 100 objects, ending with an object created at 2020-05-24T13:43:09.024Z, your subsequent call can include starting_after 2020-05-24T13:43:09.024Z in order to fetch the next page of the list.  
}

begin
  # List Customers
  result = api_instance.list_customers(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **email** | **String** | Limit the customers to the ones that have this specific email address. | [optional] |
| **city** | **String** | Limit the customers to the ones that are located in the specified city. | [optional] |
| **name** | **String** | Filter customers by the name property. | [optional] |
| **segment_id** | **String** | Filter customers by the segment id. | [optional] |
| **created_at_before** | **Time** | Filter customers by date customer was created. | [optional] |
| **created_at_after** | **Time** | Filter customers by date customer was created. | [optional] |
| **updated_at_before** | **Time** | Filter customers by date customer was updated last time. | [optional] |
| **updated_at_after** | **Time** | Filter customers by date customer was updated last time. | [optional] |
| **order** | [**ParameterOrderListCustomers**](.md) | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after** | **Time** | A cursor for pagination. This is a date-time value that defines your place in the list based on created_at property from the customer object. For instance, if you make a list request and receive 100 objects, ending with an object created at 2020-05-24T13:43:09.024Z, your subsequent call can include starting_after 2020-05-24T13:43:09.024Z in order to fetch the next page of the list.   | [optional] |

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
customer_id = 'customer_id_example' # String | A Voucherify customers id or source_id.
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

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customers id or source_id. |  |
| **customers_update_request_body** | [**CustomersUpdateRequestBody**](CustomersUpdateRequestBody.md) | Specify the parameters to be updated. | [optional] |

### Return type

[**CustomersUpdateResponseBody**](CustomersUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers_in_bulk

> <CustomersUpdateInBulkResponseBody> update_customers_in_bulk(opts)

Update Customers in Bulk

Updates customers in one asynchronous operation. The request can include up to **10 MB** of data. The response returns a unique asynchronous action ID. Use this ID in the query paramater of the GET Async Action endpoint to check, e.g.: - The status of your request (in queue, in progress, done, or failed) - Resources that failed to be updated - The report file with details about the update If a customer object is not found, it is **upserted**. This is shown in the report file in the **GET** Async Action endpoint. The upserted resources have value false in the found column and true in the updated column. This API request starts a process that affects Voucherify data in bulk. In the case of small jobs (like bulk update), the request is put into a queue and processed when every other bulk request placed in the queue prior to this request is finished.

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
  customers_update_in_bulk_request_body: [VoucherifySdk::CustomersUpdateInBulkRequestBody.new] # Array<CustomersUpdateInBulkRequestBody> | List the customer fields to be updated in each customer object.
}

begin
  # Update Customers in Bulk
  result = api_instance.update_customers_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_in_bulk: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_update_in_bulk_request_body** | [**Array&lt;CustomersUpdateInBulkRequestBody&gt;**](CustomersUpdateInBulkRequestBody.md) | List the customer fields to be updated in each customer object. | [optional] |

### Return type

[**CustomersUpdateInBulkResponseBody**](CustomersUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers_metadata_in_bulk

> <CustomersMetadataUpdateInBulkResponseBody> update_customers_metadata_in_bulk(opts)

Update Customers' Metadata in Bulk

Updates metadata parameters for a list of customers. Every resource in the list will receive the metadata defined in the request. The request can include up to **10 MB** of data. The response returns a unique asynchronous action ID. Use this ID in the query paramater of the GET Async Action endpoint to check, e.g.: - The status of your request (in queue, in progress, done, or failed) - Resources that failed to be updated - The report file with details about the update If a product object is not found, it is **upserted**. This is shown in the report file in the **GET** Async Action endpoint. The upserted resources have value false in the found column and true in the updated column. This API request starts a process that affects Voucherify data in bulk. In the case of small jobs (like bulk update), the request is put into a queue and processed when every other bulk request placed in the queue prior to this request is finished.

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
  customers_metadata_update_in_bulk_request_body: VoucherifySdk::CustomersMetadataUpdateInBulkRequestBody.new # CustomersMetadataUpdateInBulkRequestBody | List the source_ids of the customers you would like to update with the metadata key/value pairs.
}

begin
  # Update Customers' Metadata in Bulk
  result = api_instance.update_customers_metadata_in_bulk(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CustomersApi->update_customers_metadata_in_bulk: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers_metadata_update_in_bulk_request_body** | [**CustomersMetadataUpdateInBulkRequestBody**](CustomersMetadataUpdateInBulkRequestBody.md) | List the source_ids of the customers you would like to update with the metadata key/value pairs. | [optional] |

### Return type

[**CustomersMetadataUpdateInBulkResponseBody**](CustomersMetadataUpdateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

