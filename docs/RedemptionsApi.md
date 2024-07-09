# VoucherifySdk::RedemptionsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_redemption**](RedemptionsApi.md#get_redemption) | **GET** /v1/redemptions/{redemptionId} | Get Redemption |
| [**get_voucher_redemptions**](RedemptionsApi.md#get_voucher_redemptions) | **GET** /v1/vouchers/{code}/redemption | Get Voucher&#39;s Redemptions |
| [**list_redemptions**](RedemptionsApi.md#list_redemptions) | **GET** /v1/redemptions | List Redemptions |
| [**redeem_stacked_discounts**](RedemptionsApi.md#redeem_stacked_discounts) | **POST** /v1/redemptions | Redeem Stackable Discounts |
| [**rollback_redemption**](RedemptionsApi.md#rollback_redemption) | **POST** /v1/redemptions/{redemptionId}/rollback | Rollback Redemption |
| [**rollback_stacked_redemptions**](RedemptionsApi.md#rollback_stacked_redemptions) | **POST** /v1/redemptions/{parentRedemptionId}/rollbacks | Rollback Stackable Redemptions |


## get_redemption

> <RedemptionsGetResponseBody> get_redemption(redemption_id)

Get Redemption

Return a redemption or redemption rollback object. This object can either be a successfull or failed redemption or redemption rollback.

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

api_instance = VoucherifySdk::RedemptionsApi.new
redemption_id = 'redemption_id_example' # String | ID of previously created redemption.

begin
  # Get Redemption
  result = api_instance.get_redemption(redemption_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->get_redemption: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redemption_id** | **String** | ID of previously created redemption. |  |

### Return type

[**RedemptionsGetResponseBody**](RedemptionsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_redemptions

> <VouchersRedemptionGetResponseBody> get_voucher_redemptions(code)

Get Voucher's Redemptions

Retrieve the number of times a voucher was redeemed and each of the redemption details.

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

api_instance = VoucherifySdk::RedemptionsApi.new
code = 'code_example' # String | A **code** that identifies the voucher.

begin
  # Get Voucher's Redemptions
  result = api_instance.get_voucher_redemptions(code)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->get_voucher_redemptions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher. |  |

### Return type

[**VouchersRedemptionGetResponseBody**](VouchersRedemptionGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_redemptions

> <RedemptionsListResponseBody> list_redemptions(opts)

List Redemptions

Returns a list of redemptions previously created. The redemptions are returned in a sorted order, with the most recent redemptions appearing first. The response returns a list of redemptions of all vouchers.  # Filtering results The result can be narrowed according to specified (or default) filters, for example, you can sort redemptions by date: https://api.voucherify.io/v1/redemptions?limit 3&[created_at][before] 2017-09-08T13:52:18.227Z. A filter based on the object created_at field narrows down the results and lists redemptions done before or after a particular date time. You can use the following options: [created_at][after], [created_at][before]. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z. # Failed Redemptions A redemption may fail for various reasons. You can figure out an exact reason from the failure_code: - resource_not_found - voucher with given code does not exist - voucher_not_active - voucher is not active yet (before start date) - voucher_expired - voucher has already expired (after expiration date) - voucher_disabled -  voucher has been disabled (active: false) - quantity_exceeded - vouchers redemptions limit has been exceeded - gift_amount_exceeded - gift amount has been exceeded - customer_rules_violated - customer did not match the segment - order_rules_violated - order did not match validation rules - invalid_order - order was specified incorrectly - invalid_amount - order amount was specified incorrectly - missing_amount - order amount was not specified - missing_order_items - order items were not specified - missing_customer - customer was not specified

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

api_instance = VoucherifySdk::RedemptionsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  result: 'result_example', # String | A filter on the list based on the redemption result. Available options are: SUCCESS, FAILURE. You can provide multiple values by repeating the param.
  campaign: 'campaign_example', # String | A filter by the campaign **name** that the redemption resources originate from.
  customer: 'customer_example', # String | Return redemptions performed by the customer with given id or source_id.
  order: VoucherifySdk::ParameterOrderListRedemptions::CREATED_AT, # ParameterOrderListRedemptions | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  created_at: VoucherifySdk::ParameterCreatedBeforeAfter.new, # ParameterCreatedBeforeAfter | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z
  filters: VoucherifySdk::ParameterFiltersListRedemptions.new # ParameterFiltersListRedemptions | Filters for listing responses.
}

begin
  # List Redemptions
  result = api_instance.list_redemptions(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->list_redemptions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **result** | **String** | A filter on the list based on the redemption result. Available options are: SUCCESS, FAILURE. You can provide multiple values by repeating the param. | [optional] |
| **campaign** | **String** | A filter by the campaign **name** that the redemption resources originate from. | [optional] |
| **customer** | **String** | Return redemptions performed by the customer with given id or source_id. | [optional] |
| **order** | [**ParameterOrderListRedemptions**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **created_at** | [**ParameterCreatedBeforeAfter**](.md) | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z | [optional] |
| **filters** | [**ParameterFiltersListRedemptions**](.md) | Filters for listing responses. | [optional] |

### Return type

[**RedemptionsListResponseBody**](RedemptionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redeem_stacked_discounts

> <RedemptionsRedeemResponseBody> redeem_stacked_discounts(opts)

Redeem Stackable Discounts

# How API returns calculated discounts and order amounts in the response In the table below, you can see the logic the API follows to calculate discounts and amounts:    📘 Rollbacks  You cant roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your rollback request.      📘 Also available on client-side  This method is also accessible through public keys which you can use in client-side​ apps: mobile and web browser apps. Go to the dedicated endpoint to learn more.  - Use X-Client-Application-Id as the application ID header.  - Use X-Client-Token as the appliction secret key header.  - Use client-side base URL.  - Use an origin header for your custom domain.

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

api_instance = VoucherifySdk::RedemptionsApi.new
opts = {
  redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new # RedemptionsRedeemRequestBody | 
}

begin
  # Redeem Stackable Discounts
  result = api_instance.redeem_stacked_discounts(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->redeem_stacked_discounts: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redemptions_redeem_request_body** | [**RedemptionsRedeemRequestBody**](RedemptionsRedeemRequestBody.md) |  | [optional] |

### Return type

[**RedemptionsRedeemResponseBody**](RedemptionsRedeemResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rollback_redemption

> <RedemptionsRollbackCreateResponseBody> rollback_redemption(redemption_id, opts)

Rollback Redemption

Your business logic may include a case when you need to undo a redemption. You can revert a redemption by calling this API endpoint.  🚧  You can roll back a redemption up to 3 months back.   # Effect  The operation  - creates a rollback entry in vouchers redemption history (redemption.redemption_entries) and  - gives 1 redemption back to the pool (decreases redeemed_quantity by 1).  # Returned funds  In case of *gift card vouchers*, this method returns funds back according to the source redemption. In case of *loyalty card vouchers*, this method returns points back according to the source redemption.

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

api_instance = VoucherifySdk::RedemptionsApi.new
redemption_id = 'redemption_id_example' # String | The original redemption ID to be rolled back (undone).
opts = {
  reason: 'reason_example', # String | Reason for the rollback.
  tracking_id: 'tracking_id_example', # String | Customers source_id.
  redemptions_rollback_create_request_body: VoucherifySdk::RedemptionsRollbackCreateRequestBody.new # RedemptionsRollbackCreateRequestBody | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
}

begin
  # Rollback Redemption
  result = api_instance.rollback_redemption(redemption_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->rollback_redemption: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redemption_id** | **String** | The original redemption ID to be rolled back (undone). |  |
| **reason** | **String** | Reason for the rollback. | [optional] |
| **tracking_id** | **String** | Customers source_id. | [optional] |
| **redemptions_rollback_create_request_body** | [**RedemptionsRollbackCreateRequestBody**](RedemptionsRollbackCreateRequestBody.md) | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body. | [optional] |

### Return type

[**RedemptionsRollbackCreateResponseBody**](RedemptionsRollbackCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rollback_stacked_redemptions

> <RedemptionsRollbacksCreateResponseBody> rollback_stacked_redemptions(parent_redemption_id, opts)

Rollback Stackable Redemptions

Rollback a stackable redemption. When you rollback a stacked redemption, all child redemptions will be rolled back. Provide the parent redemption ID as the path parameter.  🚧   You can roll back a redemption up to 3 months back.

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

api_instance = VoucherifySdk::RedemptionsApi.new
parent_redemption_id = 'parent_redemption_id_example' # String | Unique identifier of a parent redemption, e.g. r_JQfm73zWSJFQxs3bGxweYjgm.
opts = {
  reason: 'reason_example', # String | Reason for the rollback.
  tracking_id: 'tracking_id_example', # String | Customers source_id.
  redemptions_rollbacks_create_request_body: VoucherifySdk::RedemptionsRollbacksCreateRequestBody.new # RedemptionsRollbacksCreateRequestBody | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
}

begin
  # Rollback Stackable Redemptions
  result = api_instance.rollback_stacked_redemptions(parent_redemption_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling RedemptionsApi->rollback_stacked_redemptions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_redemption_id** | **String** | Unique identifier of a parent redemption, e.g. r_JQfm73zWSJFQxs3bGxweYjgm. |  |
| **reason** | **String** | Reason for the rollback. | [optional] |
| **tracking_id** | **String** | Customers source_id. | [optional] |
| **redemptions_rollbacks_create_request_body** | [**RedemptionsRollbacksCreateRequestBody**](RedemptionsRollbacksCreateRequestBody.md) | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body. | [optional] |

### Return type

[**RedemptionsRollbacksCreateResponseBody**](RedemptionsRollbacksCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

