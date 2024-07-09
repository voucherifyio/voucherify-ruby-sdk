# VoucherifySdk::OrdersApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_order**](OrdersApi.md#create_order) | **POST** /v1/orders | Create Order |
| [**create_order_export**](OrdersApi.md#create_order_export) | **POST** /v1/orders/export | Create Orders Export |
| [**get_order**](OrdersApi.md#get_order) | **GET** /v1/orders/{orderId} | Get Order |
| [**import_orders**](OrdersApi.md#import_orders) | **POST** /v1/orders/import | Import Orders |
| [**list_orders**](OrdersApi.md#list_orders) | **GET** /v1/orders | List Orders |
| [**update_order**](OrdersApi.md#update_order) | **PUT** /v1/orders/{orderId} | Update Order |


## create_order

> <OrdersCreateResponseBody> create_order(opts)

Create Order

Creates an order object and triggers an order creation event.  📘 Upsert Mode  If you pass an id or a source_id that already exists in the order database, Voucherify will return a related order object with updated fields.

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

api_instance = VoucherifySdk::OrdersApi.new
opts = {
  orders_create_request_body: VoucherifySdk::OrdersCreateRequestBody.new # OrdersCreateRequestBody | Specify the order parameters.
}

begin
  # Create Order
  result = api_instance.create_order(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->create_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_create_request_body** | [**OrdersCreateRequestBody**](OrdersCreateRequestBody.md) | Specify the order parameters. | [optional] |

### Return type

[**OrdersCreateResponseBody**](OrdersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order_export

> <OrdersExportCreateResponseBody> create_order_export(opts)

Create Orders Export

Creates a downloadable CSV file containing a list of orders. The parameters listed in the payload resembles headers in the CSV file. To include a parameter to the file, add it to the parameters.fields object in the request body. The available filters are all order object attributes. Additionally, any metadata defined in the metadata schema can be exported. Passing an empty JSON will generate a file containing three default fields: id, source_id, and status. The fields array is an array of strings containing the data in the export. These fields define the headers in the CSV file. The array can be a combination of any of the following available fields:    

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

api_instance = VoucherifySdk::OrdersApi.new
opts = {
  orders_export_create_request_body: VoucherifySdk::OrdersExportCreateRequestBody.new # OrdersExportCreateRequestBody | Specify which order parameters you would like to export.
}

begin
  # Create Orders Export
  result = api_instance.create_order_export(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->create_order_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_export_create_request_body** | [**OrdersExportCreateRequestBody**](OrdersExportCreateRequestBody.md) | Specify which order parameters you would like to export. | [optional] |

### Return type

[**OrdersExportCreateResponseBody**](OrdersExportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order

> <OrdersGetResponseBody> get_order(order_id)

Get Order

Retrieve an order.

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

api_instance = VoucherifySdk::OrdersApi.new
order_id = 'order_id_example' # String | Unique Voucherify order ID or order source ID.

begin
  # Get Order
  result = api_instance.get_order(order_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->get_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Unique Voucherify order ID or order source ID. |  |

### Return type

[**OrdersGetResponseBody**](OrdersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_orders

> <OrdersImportCreateResponseBody> import_orders(opts)

Import Orders

  🚧 Historical orders  This endpoint should only be used to import historical orders into Voucherify. For on-going synchronization, the create order and update order endpoints should be used. This is critical because this endpoint does not store events or launch distributions. # Limitations ## Import volume There can be only a single on-going order import per tenant per project at a given time. The user can schedule more imports but those extra imports will be scheduled to run in sequence one by one.   ## Maximum count of orders in single import There is a 2000 limit but we might decide to change it to a lower / higher value at any given time depending if we find this value is too high or too low with time. # Notifications There are no notifications on the Dashboard because this import is launched via the API. # Triggered actions    If you import orders with customers, then a logic will be scheduled responsible for placing these customers into segments and refreshing the segments summary. Consequently, this update will trigger  - **customers entering into segments**  - **distributions** based on any rules tied to customer entering segment(s) - **earning rules** based on the customer entering segment(s) # What is not triggered 1. No webhooks are triggered during the import of orders - for both orders and upserted products / skus.   2. Distributions based on Order Update, Order Paid, Order Created and Order Cancelled. In other words if you have a distribution based on Order Paid and you import an order with a PAID status, the distribution is not going to be triggered.     3. No events are created during the import of orders - for both orders and upserted products / skus. In other words you wont see any events in the Activity tab in the Dashboard such as Order created or Order paid. If you are additionally upserting products / skus, then you wont see the Product created events listed, etc.    4. Earning rules based on Order Paid wont be triggered. This API request starts a process that affects Voucherify data in bulk.  In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the IN_PROGRESS status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.  The result will return the async ID. You can verify the status of your request via this API request.

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

api_instance = VoucherifySdk::OrdersApi.new
opts = {
  orders_import_create_request_body_item: [VoucherifySdk::OrdersImportCreateRequestBodyItem.new] # Array<OrdersImportCreateRequestBodyItem> | The request body is sent in the form of an array of order objects.
}

begin
  # Import Orders
  result = api_instance.import_orders(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->import_orders: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_import_create_request_body_item** | [**Array&lt;OrdersImportCreateRequestBodyItem&gt;**](OrdersImportCreateRequestBodyItem.md) | The request body is sent in the form of an array of order objects. | [optional] |

### Return type

[**OrdersImportCreateResponseBody**](OrdersImportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_orders

> <OrdersListResponseBody> list_orders(opts)

List Orders

Returns a list of orders. 

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

api_instance = VoucherifySdk::OrdersApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListOrders::CREATED_AT # ParameterOrderListOrders | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Orders
  result = api_instance.list_orders(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->list_orders: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListOrders**](.md) | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**OrdersListResponseBody**](OrdersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order

> <OrdersUpdateResponseBody> update_order(order_id, opts)

Update Order

Updates the specified order by setting the values of the parameters passed in the request body. Any parameters not provided will be left unchanged.

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

api_instance = VoucherifySdk::OrdersApi.new
order_id = 'order_id_example' # String | Unique Voucherify order ID or order source ID.
opts = {
  orders_update_request_body: VoucherifySdk::OrdersUpdateRequestBody.new # OrdersUpdateRequestBody | Specify the parameters of the order that are to be updated.
}

begin
  # Update Order
  result = api_instance.update_order(order_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling OrdersApi->update_order: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Unique Voucherify order ID or order source ID. |  |
| **orders_update_request_body** | [**OrdersUpdateRequestBody**](OrdersUpdateRequestBody.md) | Specify the parameters of the order that are to be updated. | [optional] |

### Return type

[**OrdersUpdateResponseBody**](OrdersUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

