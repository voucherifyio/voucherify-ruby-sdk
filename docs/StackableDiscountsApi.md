# VoucherifySdk::StackableDiscountsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**redeem_stacked_discounts**](StackableDiscountsApi.md#redeem_stacked_discounts) | **POST** /v1/redemptions | Redeem Stackable Discounts |
| [**redeem_stacked_discounts_client_side**](StackableDiscountsApi.md#redeem_stacked_discounts_client_side) | **POST** /client/v1/redemptions | Redeem Stackable Discounts (client-side) |
| [**rollback_stacked_redemptions**](StackableDiscountsApi.md#rollback_stacked_redemptions) | **POST** /v1/redemptions/{parentRedemptionId}/rollbacks | Rollback Stackable Redemptions |
| [**validate_stacked_discounts**](StackableDiscountsApi.md#validate_stacked_discounts) | **POST** /v1/validations | Validate Stackable Discounts |
| [**validate_stacked_discounts_client_side**](StackableDiscountsApi.md#validate_stacked_discounts_client_side) | **POST** /client/v1/validations | Validate Stackable Discounts (client-side) |


## redeem_stacked_discounts

> <RedemptionsRedeemResponseBody> redeem_stacked_discounts(opts)

Redeem Stackable Discounts

## How API returns calculated discounts and order amounts in the response  In the table below, you can see the logic the API follows to calculate discounts and amounts:  | **Field** | **Calculation** | **Description** | |:---|:---|:---| | amount | N/A | This field shows the order amount before applying any discount | | total_amount | `total_amount` = `amount` - `total_discount_amount` | This field shows the order amount after applying all the discounts | | discount_amount | `discount_amount` = `previous_discount_amount` + `applied_discount_amount` | This field sums up all order-level discounts up to and including the specific discount being calculated for the stacked redemption. | | items_discount_amount | sum(items, i => i.discount_amount) | This field sums up all product-specific discounts | | total_discount_amount | `total_discount_amount` = `discount_amount` + `items_discount_amount` | This field sums up all order-level and all product-specific discounts | | applied_discount_amount | N/A | This field shows the order-level discount applied in a particular request | | items_applied_discount_amount | sum(items, i => i.applied_discount_amount) | This field sums up all product-specific discounts applied in a particular request | | total_applied_discount_amount | `total_applied_discount_amount` = `applied_discount_amount` + `items_applied_discount_amount` | This field sums up all order-level and all product-specific discounts applied in a particular request |  <!-- theme: info --> > 📘 Rollbacks > > You can't roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your <!-- [rollback request](OpenAPI.json/paths/~1redemptions~1{parentRedemptionId}~1rollbacks/post) -->[rollback request](ref:rollback-stacked-redemptions).      <!-- theme: info --> > 📘 Also available on client-side > > This method is also accessible through public keys which you can use in client-side​ apps: mobile and web browser apps. Go to the dedicated [endpoint](ref:redeem-stacked-discounts-client-side) to learn more. > - Use `X-Client-Application-Id` as the application ID header. > - Use `X-Client-Token` as the appliction secret key header. > - Use client-side base URL. > - Use an `origin` header for your custom domain.

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

api_instance = VoucherifySdk::StackableDiscountsApi.new
opts = {
  redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # RedemptionsRedeemRequestBody | 
}

begin
  # Redeem Stackable Discounts
  result = api_instance.redeem_stacked_discounts(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts: #{e}"
end
```

#### Using the redeem_stacked_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedemptionsRedeemResponseBody>, Integer, Hash)> redeem_stacked_discounts_with_http_info(opts)

```ruby
begin
  # Redeem Stackable Discounts
  data, status_code, headers = api_instance.redeem_stacked_discounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedemptionsRedeemResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts_with_http_info: #{e}"
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


## redeem_stacked_discounts_client_side

> <ClientRedemptionsRedeemResponseBody> redeem_stacked_discounts_client_side(origin, opts)

Redeem Stackable Discounts (client-side)

This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications.  ## How API returns calculated discounts and order amounts in the response  In the table below, you can see the logic the API follows to calculate discounts and amounts:  | **Field** | **Calculation** | **Description** | |:---|:---|:---| | amount | N/A | This field shows the order amount before applying any discount | | total_amount | `total_amount` = `amount` - `total_discount_amount` | This field shows the order amount after applying all the discounts | | discount_amount | `discount_amount` = `previous_discount_amount` + `applied_discount_amount` | This field sums up all order-level discounts up to and including the specific discount being calculated for the stacked redemption. | | items_discount_amount | sum(items, i => i.discount_amount) | This field sums up all product-specific discounts | | total_discount_amount | `total_discount_amount` = `discount_amount` + `items_discount_amount` | This field sums up all order-level and all product-specific discounts | | applied_discount_amount | N/A | This field shows the order-level discount applied in a particular request | | items_applied_discount_amount | sum(items, i => i.applied_discount_amount) | This field sums up all product-specific discounts applied in a particular request | | total_applied_discount_amount | `total_applied_discount_amount` = `applied_discount_amount` + `items_applied_discount_amount` | This field sums up all order-level and all product-specific discounts applied in a particular request |  <!-- theme: info --> > 📘 Rollbacks > > You can't roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your <!-- [rollback request](OpenAPI.json/paths/~1redemptions~1{parentRedemptionId}~1rollbacks/post) -->[rollback request](ref:rollback-stacked-redemptions).

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Client-Application-Id
  config.api_key['X-Client-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Application-Id'] = 'Bearer'

  # Configure API key authorization: X-Client-Token
  config.api_key['X-Client-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::StackableDiscountsApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_redemptions_redeem_request_body: VoucherifySdk::ClientRedemptionsRedeemRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # ClientRedemptionsRedeemRequestBody | 
}

begin
  # Redeem Stackable Discounts (client-side)
  result = api_instance.redeem_stacked_discounts_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts_client_side: #{e}"
end
```

#### Using the redeem_stacked_discounts_client_side_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientRedemptionsRedeemResponseBody>, Integer, Hash)> redeem_stacked_discounts_client_side_with_http_info(origin, opts)

```ruby
begin
  # Redeem Stackable Discounts (client-side)
  data, status_code, headers = api_instance.redeem_stacked_discounts_client_side_with_http_info(origin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientRedemptionsRedeemResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->redeem_stacked_discounts_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin** | **String** | Indicates the origin (scheme, hostname, and port). |  |
| **client_redemptions_redeem_request_body** | [**ClientRedemptionsRedeemRequestBody**](ClientRedemptionsRedeemRequestBody.md) |  | [optional] |

### Return type

[**ClientRedemptionsRedeemResponseBody**](ClientRedemptionsRedeemResponseBody.md)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rollback_stacked_redemptions

> <RedemptionsRollbacksCreateResponseBody> rollback_stacked_redemptions(parent_redemption_id, opts)

Rollback Stackable Redemptions

Rollback a stackable redemption. When you rollback a stacked redemption, all child redemptions will be rolled back. Provide the parent redemption ID as the path parameter.

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

api_instance = VoucherifySdk::StackableDiscountsApi.new
parent_redemption_id = 'parent_redemption_id_example' # String | Unique identifier of a parent redemption, e.g. `r_JQfm73zWSJFQxs3bGxweYjgm`.
opts = {
  reason: 'reason_example', # String | Reason for the rollback.
  tracking_id: 'tracking_id_example', # String | Customer's `source_id`.
  redemptions_rollbacks_create_request_body: VoucherifySdk::RedemptionsRollbacksCreateRequestBody.new # RedemptionsRollbacksCreateRequestBody | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body.
}

begin
  # Rollback Stackable Redemptions
  result = api_instance.rollback_stacked_redemptions(parent_redemption_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->rollback_stacked_redemptions: #{e}"
end
```

#### Using the rollback_stacked_redemptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedemptionsRollbacksCreateResponseBody>, Integer, Hash)> rollback_stacked_redemptions_with_http_info(parent_redemption_id, opts)

```ruby
begin
  # Rollback Stackable Redemptions
  data, status_code, headers = api_instance.rollback_stacked_redemptions_with_http_info(parent_redemption_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedemptionsRollbacksCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->rollback_stacked_redemptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent_redemption_id** | **String** | Unique identifier of a parent redemption, e.g. &#x60;r_JQfm73zWSJFQxs3bGxweYjgm&#x60;. |  |
| **reason** | **String** | Reason for the rollback. | [optional] |
| **tracking_id** | **String** | Customer&#39;s &#x60;source_id&#x60;. | [optional] |
| **redemptions_rollbacks_create_request_body** | [**RedemptionsRollbacksCreateRequestBody**](RedemptionsRollbacksCreateRequestBody.md) | Add information about the original customer and order. Customer data and Redemption metadata can be updated in Voucherify when passing the customer data in the request body. | [optional] |

### Return type

[**RedemptionsRollbacksCreateResponseBody**](RedemptionsRollbacksCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_stacked_discounts

> <ValidationsValidateResponseBody> validate_stacked_discounts(opts)

Validate Stackable Discounts

Verify redeemables provided in the request. This method is designed for server side integration which means that it is accessible only through private keys.

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

api_instance = VoucherifySdk::StackableDiscountsApi.new
opts = {
  validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # ValidationsValidateRequestBody | 
}

begin
  # Validate Stackable Discounts
  result = api_instance.validate_stacked_discounts(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->validate_stacked_discounts: #{e}"
end
```

#### Using the validate_stacked_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidationsValidateResponseBody>, Integer, Hash)> validate_stacked_discounts_with_http_info(opts)

```ruby
begin
  # Validate Stackable Discounts
  data, status_code, headers = api_instance.validate_stacked_discounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidationsValidateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->validate_stacked_discounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validations_validate_request_body** | [**ValidationsValidateRequestBody**](ValidationsValidateRequestBody.md) |  | [optional] |

### Return type

[**ValidationsValidateResponseBody**](ValidationsValidateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_stacked_discounts_client_side

> <ClientValidationsValidateResponseBody> validate_stacked_discounts_client_side(origin, opts)

Validate Stackable Discounts (client-side)

Verify redeemables provided in the request. This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Client-Application-Id
  config.api_key['X-Client-Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Application-Id'] = 'Bearer'

  # Configure API key authorization: X-Client-Token
  config.api_key['X-Client-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Client-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::StackableDiscountsApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_validations_validate_request_body: VoucherifySdk::ClientValidationsValidateRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # ClientValidationsValidateRequestBody | 
}

begin
  # Validate Stackable Discounts (client-side)
  result = api_instance.validate_stacked_discounts_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->validate_stacked_discounts_client_side: #{e}"
end
```

#### Using the validate_stacked_discounts_client_side_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientValidationsValidateResponseBody>, Integer, Hash)> validate_stacked_discounts_client_side_with_http_info(origin, opts)

```ruby
begin
  # Validate Stackable Discounts (client-side)
  data, status_code, headers = api_instance.validate_stacked_discounts_client_side_with_http_info(origin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientValidationsValidateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling StackableDiscountsApi->validate_stacked_discounts_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin** | **String** | Indicates the origin (scheme, hostname, and port). |  |
| **client_validations_validate_request_body** | [**ClientValidationsValidateRequestBody**](ClientValidationsValidateRequestBody.md) |  | [optional] |

### Return type

[**ClientValidationsValidateResponseBody**](ClientValidationsValidateResponseBody.md)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

