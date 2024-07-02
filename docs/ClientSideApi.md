# VoucherifySdk::ClientSideApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_eligibility_client_side**](ClientSideApi.md#check_eligibility_client_side) | **POST** /client/v1/qualifications | Check Eligibility (client-side) |
| [**redeem_stacked_discounts_client_side**](ClientSideApi.md#redeem_stacked_discounts_client_side) | **POST** /client/v1/redemptions | Redeem Stackable Discounts (client-side) |
| [**track_custom_event_client_side**](ClientSideApi.md#track_custom_event_client_side) | **POST** /client/v1/events | Track Custom Event (client-side) |
| [**update_customers_consents_client_side**](ClientSideApi.md#update_customers_consents_client_side) | **PUT** /client/v1/customers/{customerId}/consents | Update Customer&#39;s consents (client-side) |
| [**validate_stacked_discounts_client_side**](ClientSideApi.md#validate_stacked_discounts_client_side) | **POST** /client/v1/validations | Validate Stackable Discounts (client-side) |


## check_eligibility_client_side

> <ClientQualificationsCheckEligibilityResponseBody> check_eligibility_client_side(opts)

Check Eligibility (client-side)

Generate a list of redeemables that are applicable in the context of the customer and order.  The new qualifications method is an improved version of [Campaign Qualifications](ref:examine-campaigns-qualification), [Voucher Qualifications](ref:examine-vouchers-qualification), and [Promotions Validation](ref:validate-promotions) API requests. The new qualification method introduces the following improvements:  - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  > 👍 Scenario Guide > > Read our dedicated guide to learn about some use cases this endpoint can cover [here](doc:checking-eligibility).  ## Paging   The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the `starting_after` cursor.  To process of paging the redeemables works in the following manner:  - You send the first API request for Qualifications without the `starting_after` parameter. - The response will contain a parameter named `has_more`. If the parameter's value is set to `true`, then more redeemables are available. - Get the value of the `created_at` parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the `starting_after` parameter set to the value taken from the `created_at` parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the `has_more` parameter is set to `true`, apply steps 3-5 to get the next page of redeemables.

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

api_instance = VoucherifySdk::ClientSideApi.new
opts = {
  client_qualifications_check_eligibility_request_body: VoucherifySdk::ClientQualificationsCheckEligibilityRequestBody.new # ClientQualificationsCheckEligibilityRequestBody | Define order and customer context.
}

begin
  # Check Eligibility (client-side)
  result = api_instance.check_eligibility_client_side(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->check_eligibility_client_side: #{e}"
end
```

#### Using the check_eligibility_client_side_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientQualificationsCheckEligibilityResponseBody>, Integer, Hash)> check_eligibility_client_side_with_http_info(opts)

```ruby
begin
  # Check Eligibility (client-side)
  data, status_code, headers = api_instance.check_eligibility_client_side_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientQualificationsCheckEligibilityResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->check_eligibility_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_qualifications_check_eligibility_request_body** | [**ClientQualificationsCheckEligibilityRequestBody**](ClientQualificationsCheckEligibilityRequestBody.md) | Define order and customer context. | [optional] |

### Return type

[**ClientQualificationsCheckEligibilityResponseBody**](ClientQualificationsCheckEligibilityResponseBody.md)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

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

api_instance = VoucherifySdk::ClientSideApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_redemptions_redeem_request_body: VoucherifySdk::ClientRedemptionsRedeemRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # ClientRedemptionsRedeemRequestBody | 
}

begin
  # Redeem Stackable Discounts (client-side)
  result = api_instance.redeem_stacked_discounts_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->redeem_stacked_discounts_client_side: #{e}"
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
  puts "Error when calling ClientSideApi->redeem_stacked_discounts_client_side_with_http_info: #{e}"
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


## track_custom_event_client_side

> <ClientEventsCreateResponseBody> track_custom_event_client_side(origin, opts)

Track Custom Event (client-side)

To track a custom event, you create an event object.    The event object must be linked to the customer who performs the action. If a customer doesn't exist in Voucherify, the customer will be created.

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

api_instance = VoucherifySdk::ClientSideApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_events_create_request_body: VoucherifySdk::ClientEventsCreateRequestBody.new({event: 'event_example', customer: VoucherifySdk::Customer.new}) # ClientEventsCreateRequestBody | Specify the details of the custom event.
}

begin
  # Track Custom Event (client-side)
  result = api_instance.track_custom_event_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->track_custom_event_client_side: #{e}"
end
```

#### Using the track_custom_event_client_side_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientEventsCreateResponseBody>, Integer, Hash)> track_custom_event_client_side_with_http_info(origin, opts)

```ruby
begin
  # Track Custom Event (client-side)
  data, status_code, headers = api_instance.track_custom_event_client_side_with_http_info(origin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientEventsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->track_custom_event_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origin** | **String** | Indicates the origin (scheme, hostname, and port). |  |
| **client_events_create_request_body** | [**ClientEventsCreateRequestBody**](ClientEventsCreateRequestBody.md) | Specify the details of the custom event. | [optional] |

### Return type

[**ClientEventsCreateResponseBody**](ClientEventsCreateResponseBody.md)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customers_consents_client_side

> update_customers_consents_client_side(customer_id, opts)

Update Customer's consents (client-side)

Update marketing permissions for the specified customer.

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

api_instance = VoucherifySdk::ClientSideApi.new
customer_id = 'customer_id_example' # String | A Voucherify customer identifier or `source_id`
opts = {
  body: { ... } # Object | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use \"unsubscribed\" as a consent identifier and \"true\" as its value.    #### Examples  <!-- title: \"Request Body\" lineNumbers: true --> ```json {     \"cnst_aIdUulAh0SCsOCaS3005y7yS\": true,     \"cnst_aIdUulAhwewqaS31213fdsfds\": false } ```  Opt-out from all communication:  <!-- title: \"Request Body\" lineNumbers: true --> ```json {     \"unsubscribed\": true } ```
}

begin
  # Update Customer's consents (client-side)
  api_instance.update_customers_consents_client_side(customer_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->update_customers_consents_client_side: #{e}"
end
```

#### Using the update_customers_consents_client_side_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customers_consents_client_side_with_http_info(customer_id, opts)

```ruby
begin
  # Update Customer's consents (client-side)
  data, status_code, headers = api_instance.update_customers_consents_client_side_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->update_customers_consents_client_side_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer identifier or &#x60;source_id&#x60; |  |
| **body** | **Object** | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use \&quot;unsubscribed\&quot; as a consent identifier and \&quot;true\&quot; as its value.    #### Examples  &lt;!-- title: \&quot;Request Body\&quot; lineNumbers: true --&gt; &#x60;&#x60;&#x60;json {     \&quot;cnst_aIdUulAh0SCsOCaS3005y7yS\&quot;: true,     \&quot;cnst_aIdUulAhwewqaS31213fdsfds\&quot;: false } &#x60;&#x60;&#x60;  Opt-out from all communication:  &lt;!-- title: \&quot;Request Body\&quot; lineNumbers: true --&gt; &#x60;&#x60;&#x60;json {     \&quot;unsubscribed\&quot;: true } &#x60;&#x60;&#x60; | [optional] |

### Return type

nil (empty response body)

### Authorization

[X-Client-Application-Id](../README.md#X-Client-Application-Id), [X-Client-Token](../README.md#X-Client-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


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

api_instance = VoucherifySdk::ClientSideApi.new
origin = 'origin_example' # String | Indicates the origin (scheme, hostname, and port).
opts = {
  client_validations_validate_request_body: VoucherifySdk::ClientValidationsValidateRequestBody.new({redeemables: [VoucherifySdk::RedeemGiftCard.new({object: 'voucher', id: 'id_example'})]}) # ClientValidationsValidateRequestBody | 
}

begin
  # Validate Stackable Discounts (client-side)
  result = api_instance.validate_stacked_discounts_client_side(origin, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->validate_stacked_discounts_client_side: #{e}"
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
  puts "Error when calling ClientSideApi->validate_stacked_discounts_client_side_with_http_info: #{e}"
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

