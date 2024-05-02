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

Generate a list of redeemables that are applicable in the context of the customer and order. The new qualifications method is an improved version of Campaign Qualifications, Voucher Qualifications, and Promotions Validation API requests. The new qualification method introduces the following improvements: - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  👍 Scenario Guide  Read our dedicated guide to learn about some use cases this endpoint can cover here. # Paging  The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the starting_after cursor. To process of paging the redeemables works in the following manner: - You send the first API request for Qualifications without the starting_after parameter. - The response will contain a parameter named has_more. If the parameters value is set to true, then more redeemables are available. - Get the value of the created_at parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the starting_after parameter set to the value taken from the created_at parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the has_more parameter is set to true, apply steps 3-5 to get the next page of redeemables.

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

This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications. # How API returns calculated discounts and order amounts in the response In the table below, you can see the logic the API follows to calculate discounts and amounts:    📘 Rollbacks  You cant roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your rollback request.

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

To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.

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
customer_id = 'customer_id_example' # String | A Voucherify customer identifier or source_id
opts = {
  body: { ... } # Object | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use unsubscribed as a consent identifier and true as its value.   ## Examples  Opt-out from all communication: 
}

begin
  # Update Customer's consents (client-side)
  api_instance.update_customers_consents_client_side(customer_id, opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ClientSideApi->update_customers_consents_client_side: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | A Voucherify customer identifier or source_id |  |
| **body** | **Object** | Key-value pairs where the key is the consent identifier and value is a boolean that identifies if a customer has given the consent or not. To deny all consents use unsubscribed as a consent identifier and true as its value.   ## Examples  Opt-out from all communication:  | [optional] |

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

