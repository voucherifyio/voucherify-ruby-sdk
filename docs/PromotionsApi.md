# VoucherifySdk::PromotionsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_promotion_tier_to_campaign**](PromotionsApi.md#add_promotion_tier_to_campaign) | **POST** /v1/promotions/{campaignId}/tiers | Add Promotion Tier to Campaign |
| [**create_promotion_stack**](PromotionsApi.md#create_promotion_stack) | **POST** /v1/promotions/{campaignId}/stacks | Create Promotion Stack |
| [**delete_promotion_stack**](PromotionsApi.md#delete_promotion_stack) | **DELETE** /v1/promotions/{campaignId}/stacks/{stackId} | Delete Promotion Stack |
| [**delete_promotion_tier**](PromotionsApi.md#delete_promotion_tier) | **DELETE** /v1/promotions/tiers/{promotionTierId} | Delete Promotion Tier |
| [**disable_promotion_tier**](PromotionsApi.md#disable_promotion_tier) | **POST** /v1/promotions/tiers/{promotionTierId}/disable | Disable Promotion Tier |
| [**enable_promotion_tier**](PromotionsApi.md#enable_promotion_tier) | **POST** /v1/promotions/tiers/{promotionTierId}/enable | Enable Promotion Tier |
| [**get_promotion_stack**](PromotionsApi.md#get_promotion_stack) | **GET** /v1/promotions/{campaignId}/stacks/{stackId} | Get Promotion Stack |
| [**get_promotion_tier**](PromotionsApi.md#get_promotion_tier) | **GET** /v1/promotions/tiers/{promotionTierId} | Get Promotion Tier |
| [**list_all_promotion_stacks**](PromotionsApi.md#list_all_promotion_stacks) | **GET** /v1/promotions/stacks | List Promotion Stacks |
| [**list_promotion_stacks_in_campaign**](PromotionsApi.md#list_promotion_stacks_in_campaign) | **GET** /v1/promotions/{campaignId}/stacks | List Promotion Stacks in Campaign |
| [**list_promotion_tiers**](PromotionsApi.md#list_promotion_tiers) | **GET** /v1/promotions/tiers | List Promotion Tiers |
| [**list_promotion_tiers_from_campaign**](PromotionsApi.md#list_promotion_tiers_from_campaign) | **GET** /v1/promotions/{campaignId}/tiers | List Promotion Tiers from Campaign |
| [**update_promotion_stack**](PromotionsApi.md#update_promotion_stack) | **PUT** /v1/promotions/{campaignId}/stacks/{stackId} | Update Promotion Stack |
| [**update_promotion_tier**](PromotionsApi.md#update_promotion_tier) | **PUT** /v1/promotions/tiers/{promotionTierId} | Update Promotion Tier |


## add_promotion_tier_to_campaign

> <PromotionsTiersCreateResponseBody> add_promotion_tier_to_campaign(campaign_id, opts)

Add Promotion Tier to Campaign

This method allows you to add a new promotion tier to an existing campaign. The tier hierarchy will be set as the next consequtive integer following the lowest ranking tier.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID assigned by Voucherify.
opts = {
  promotions_tiers_create_request_body: VoucherifySdk::PromotionsTiersCreateRequestBody.new # PromotionsTiersCreateRequestBody | Specify the promotion tier parameters.
}

begin
  # Add Promotion Tier to Campaign
  result = api_instance.add_promotion_tier_to_campaign(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->add_promotion_tier_to_campaign: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID assigned by Voucherify. |  |
| **promotions_tiers_create_request_body** | [**PromotionsTiersCreateRequestBody**](PromotionsTiersCreateRequestBody.md) | Specify the promotion tier parameters. | [optional] |

### Return type

[**PromotionsTiersCreateResponseBody**](PromotionsTiersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_promotion_stack

> <PromotionsStacksCreateResponseBody> create_promotion_stack(campaign_id, opts)

Create Promotion Stack

This method creates one promotion stack. The sequence of promotion tier IDs will determine the promotion stacking order.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
opts = {
  promotions_stacks_create_request_body: VoucherifySdk::PromotionsStacksCreateRequestBody.new # PromotionsStacksCreateRequestBody | Specify the order of promotion tiers for the promotion stack.
}

begin
  # Create Promotion Stack
  result = api_instance.create_promotion_stack(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion_stack: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **promotions_stacks_create_request_body** | [**PromotionsStacksCreateRequestBody**](PromotionsStacksCreateRequestBody.md) | Specify the order of promotion tiers for the promotion stack. | [optional] |

### Return type

[**PromotionsStacksCreateResponseBody**](PromotionsStacksCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_promotion_stack

> delete_promotion_stack(campaign_id, stack_id)

Delete Promotion Stack

This method deletes a promotion stack.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign. 
stack_id = 'stack_id_example' # String | Promotion stack ID.

begin
  # Delete Promotion Stack
  api_instance.delete_promotion_stack(campaign_id, stack_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_stack: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign.  |  |
| **stack_id** | **String** | Promotion stack ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_promotion_tier

> delete_promotion_tier(promotion_tier_id)

Delete Promotion Tier

This method deletes a promotion tier.

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

api_instance = VoucherifySdk::PromotionsApi.new
promotion_tier_id = 'promotion_tier_id_example' # String | Unique promotion tier ID.

begin
  # Delete Promotion Tier
  api_instance.delete_promotion_tier(promotion_tier_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_tier_id** | **String** | Unique promotion tier ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disable_promotion_tier

> <PromotionsTiersDisableResponseBody> disable_promotion_tier(promotion_tier_id)

Disable Promotion Tier

This method disables a promotion tier, i.e. makes the active parameter   false.

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

api_instance = VoucherifySdk::PromotionsApi.new
promotion_tier_id = 'promotion_tier_id_example' # String | Unique promotion tier ID.

begin
  # Disable Promotion Tier
  result = api_instance.disable_promotion_tier(promotion_tier_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->disable_promotion_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_tier_id** | **String** | Unique promotion tier ID. |  |

### Return type

[**PromotionsTiersDisableResponseBody**](PromotionsTiersDisableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_promotion_tier

> <PromotionsTiersEnableResponseBody> enable_promotion_tier(promotion_tier_id)

Enable Promotion Tier

This method enables a promotion tier, i.e. makes the active parameter   true.

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

api_instance = VoucherifySdk::PromotionsApi.new
promotion_tier_id = 'promotion_tier_id_example' # String | Unique promotion tier ID.

begin
  # Enable Promotion Tier
  result = api_instance.enable_promotion_tier(promotion_tier_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->enable_promotion_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_tier_id** | **String** | Unique promotion tier ID. |  |

### Return type

[**PromotionsTiersEnableResponseBody**](PromotionsTiersEnableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_promotion_stack

> <PromotionsStacksGetResponseBody> get_promotion_stack(campaign_id, stack_id)

Get Promotion Stack

This method returns the details of a promotion stack, including the promotion tiers grouped within the stack.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign. 
stack_id = 'stack_id_example' # String | Promotion stack ID.

begin
  # Get Promotion Stack
  result = api_instance.get_promotion_stack(campaign_id, stack_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_stack: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign.  |  |
| **stack_id** | **String** | Promotion stack ID. |  |

### Return type

[**PromotionsStacksGetResponseBody**](PromotionsStacksGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_promotion_tier

> <PromotionsTiersGetResponseBody> get_promotion_tier(promotion_tier_id)

Get Promotion Tier

This method enables you to retrieve a specific promotion tier.

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

api_instance = VoucherifySdk::PromotionsApi.new
promotion_tier_id = 'promotion_tier_id_example' # String | Unique promotion tier ID.

begin
  # Get Promotion Tier
  result = api_instance.get_promotion_tier(promotion_tier_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_tier_id** | **String** | Unique promotion tier ID. |  |

### Return type

[**PromotionsTiersGetResponseBody**](PromotionsTiersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_promotion_stacks

> <PromotionsStacksListResponseBody> list_all_promotion_stacks(opts)

List Promotion Stacks

This method enables you to list promotion stacks irrespective of the campaign they are associated with.  You can use filters in the query parameters to specify the stacks to be returned in the response. # Advanced filters for fetching promotion stacks  

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

api_instance = VoucherifySdk::PromotionsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListAllPromotionStacks::CREATED_AT, # ParameterOrderListAllPromotionStacks | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  created_at: VoucherifySdk::ParameterCreatedBeforeAfter.new, # ParameterCreatedBeforeAfter | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z
  updated_at: VoucherifySdk::ParameterUpdatedBeforeAfter.new # ParameterUpdatedBeforeAfter | A filter on the list based on the object updated_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [updated_at][before] 2017-09-08T13:52:18.227Z
}

begin
  # List Promotion Stacks
  result = api_instance.list_all_promotion_stacks(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_all_promotion_stacks: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListAllPromotionStacks**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **created_at** | [**ParameterCreatedBeforeAfter**](.md) | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z | [optional] |
| **updated_at** | [**ParameterUpdatedBeforeAfter**](.md) | A filter on the list based on the object updated_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [updated_at][before] 2017-09-08T13:52:18.227Z | [optional] |

### Return type

[**PromotionsStacksListResponseBody**](PromotionsStacksListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_promotion_stacks_in_campaign

> <PromotionsStacksListResponseBody> list_promotion_stacks_in_campaign(campaign_id)

List Promotion Stacks in Campaign

This method enables you to list promotion stacks from a specified campaign.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.

begin
  # List Promotion Stacks in Campaign
  result = api_instance.list_promotion_stacks_in_campaign(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_promotion_stacks_in_campaign: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |

### Return type

[**PromotionsStacksListResponseBody**](PromotionsStacksListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_promotion_tiers

> <PromotionsTiersListResponseBody> list_promotion_tiers(opts)

List Promotion Tiers

This method enables you to list promotion tiers.

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

api_instance = VoucherifySdk::PromotionsApi.new
opts = {
  is_available: true, # Boolean | This parameter allows filtering promotions that are only available at the moment. When set to true, it selects only non-expired and active promotions.
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListPromotionTiers::CREATED_AT # ParameterOrderListPromotionTiers | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Promotion Tiers
  result = api_instance.list_promotion_tiers(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_promotion_tiers: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_available** | **Boolean** | This parameter allows filtering promotions that are only available at the moment. When set to true, it selects only non-expired and active promotions. | [optional] |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListPromotionTiers**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**PromotionsTiersListResponseBody**](PromotionsTiersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_promotion_tiers_from_campaign

> <PromotionsTiersListResponseBody> list_promotion_tiers_from_campaign(campaign_id)

List Promotion Tiers from Campaign

This method enables you to list promotion tiers from a specified campaign.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID assigned by Voucherify.

begin
  # List Promotion Tiers from Campaign
  result = api_instance.list_promotion_tiers_from_campaign(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_promotion_tiers_from_campaign: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID assigned by Voucherify. |  |

### Return type

[**PromotionsTiersListResponseBody**](PromotionsTiersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_promotion_stack

> <PromotionsStacksUpdateResponseBody> update_promotion_stack(campaign_id, stack_id, opts)

Update Promotion Stack

This methods allows for editing an existing stack.

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

api_instance = VoucherifySdk::PromotionsApi.new
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign. 
stack_id = 'stack_id_example' # String | Promotion stack ID.
opts = {
  promotions_stacks_update_request_body: VoucherifySdk::PromotionsStacksUpdateRequestBody.new # PromotionsStacksUpdateRequestBody | Specify the promotion stack parameters that you would like to update.
}

begin
  # Update Promotion Stack
  result = api_instance.update_promotion_stack(campaign_id, stack_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_stack: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty Campaign.  |  |
| **stack_id** | **String** | Promotion stack ID. |  |
| **promotions_stacks_update_request_body** | [**PromotionsStacksUpdateRequestBody**](PromotionsStacksUpdateRequestBody.md) | Specify the promotion stack parameters that you would like to update. | [optional] |

### Return type

[**PromotionsStacksUpdateResponseBody**](PromotionsStacksUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_promotion_tier

> <PromotionsTiersUpdateResponseBody> update_promotion_tier(promotion_tier_id, opts)

Update Promotion Tier

This method updates a promotion tier.

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

api_instance = VoucherifySdk::PromotionsApi.new
promotion_tier_id = 'promotion_tier_id_example' # String | Unique promotion tier ID.
opts = {
  promotions_tiers_update_request_body: VoucherifySdk::PromotionsTiersUpdateRequestBody.new # PromotionsTiersUpdateRequestBody | Specify the promotion tier parameters that you would like to update.
}

begin
  # Update Promotion Tier
  result = api_instance.update_promotion_tier(promotion_tier_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **promotion_tier_id** | **String** | Unique promotion tier ID. |  |
| **promotions_tiers_update_request_body** | [**PromotionsTiersUpdateRequestBody**](PromotionsTiersUpdateRequestBody.md) | Specify the promotion tier parameters that you would like to update. | [optional] |

### Return type

[**PromotionsTiersUpdateResponseBody**](PromotionsTiersUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

