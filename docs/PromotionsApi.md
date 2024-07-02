# VoucherifySdk::PromotionsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_promotion_stack**](PromotionsApi.md#create_promotion_stack) | **POST** /v1/promotions/{campaignId}/stacks | Create Promotion Stack |
| [**delete_promotion_stack**](PromotionsApi.md#delete_promotion_stack) | **DELETE** /v1/promotions/{campaignId}/stacks/{stackId} | Delete Promotion Stack |
| [**disable_promotion_tier**](PromotionsApi.md#disable_promotion_tier) | **POST** /v1/promotions/tiers/{promotionTierId}/disable | Disable Promotion Tier |
| [**enable_promotion_tier**](PromotionsApi.md#enable_promotion_tier) | **POST** /v1/promotions/tiers/{promotionTierId}/enable | Enable Promotion Tier |
| [**get_promotion_stack**](PromotionsApi.md#get_promotion_stack) | **GET** /v1/promotions/{campaignId}/stacks/{stackId} | Get Promotion Stack |
| [**get_promotion_tier**](PromotionsApi.md#get_promotion_tier) | **GET** /v1/promotions/tiers/{promotionTierId} | Get Promotion Tier |
| [**list_all_promotion_stacks**](PromotionsApi.md#list_all_promotion_stacks) | **GET** /v1/promotions/stacks | List Promotion Stacks |
| [**list_promotion_stacks_in_campaign**](PromotionsApi.md#list_promotion_stacks_in_campaign) | **GET** /v1/promotions/{campaignId}/stacks | List Promotion Stacks in Campaign |
| [**list_promotion_tiers_from_campaign**](PromotionsApi.md#list_promotion_tiers_from_campaign) | **GET** /v1/promotions/{campaignId}/tiers | List Promotion Tiers from Campaign |
| [**update_promotion_stack**](PromotionsApi.md#update_promotion_stack) | **PUT** /v1/promotions/{campaignId}/stacks/{stackId} | Update Promotion Stack |


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
  promotions_stacks_create_request_body: VoucherifySdk::PromotionsStacksCreateRequestBody.new({name: 'name_example', tiers: VoucherifySdk::PromotionStackBaseTiers.new({ids: ['ids_example']})}) # PromotionsStacksCreateRequestBody | Specify the order of promotion tiers for the promotion stack.
}

begin
  # Create Promotion Stack
  result = api_instance.create_promotion_stack(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion_stack: #{e}"
end
```

#### Using the create_promotion_stack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsStacksCreateResponseBody>, Integer, Hash)> create_promotion_stack_with_http_info(campaign_id, opts)

```ruby
begin
  # Create Promotion Stack
  data, status_code, headers = api_instance.create_promotion_stack_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsStacksCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->create_promotion_stack_with_http_info: #{e}"
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
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty Campaign`. 
stack_id = 'stack_id_example' # String | Promotion stack ID.

begin
  # Delete Promotion Stack
  api_instance.delete_promotion_stack(campaign_id, stack_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_stack: #{e}"
end
```

#### Using the delete_promotion_stack_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_promotion_stack_with_http_info(campaign_id, stack_id)

```ruby
begin
  # Delete Promotion Stack
  data, status_code, headers = api_instance.delete_promotion_stack_with_http_info(campaign_id, stack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->delete_promotion_stack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty Campaign&#x60;.  |  |
| **stack_id** | **String** | Promotion stack ID. |  |

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

This method disables a promotion tier, i.e. makes the `active` parameter = `false`.

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

#### Using the disable_promotion_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsTiersDisableResponseBody>, Integer, Hash)> disable_promotion_tier_with_http_info(promotion_tier_id)

```ruby
begin
  # Disable Promotion Tier
  data, status_code, headers = api_instance.disable_promotion_tier_with_http_info(promotion_tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsTiersDisableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->disable_promotion_tier_with_http_info: #{e}"
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

This method enables a promotion tier, i.e. makes the `active` parameter = `true`.

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

#### Using the enable_promotion_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsTiersEnableResponseBody>, Integer, Hash)> enable_promotion_tier_with_http_info(promotion_tier_id)

```ruby
begin
  # Enable Promotion Tier
  data, status_code, headers = api_instance.enable_promotion_tier_with_http_info(promotion_tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsTiersEnableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->enable_promotion_tier_with_http_info: #{e}"
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
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty Campaign`. 
stack_id = 'stack_id_example' # String | Promotion stack ID.

begin
  # Get Promotion Stack
  result = api_instance.get_promotion_stack(campaign_id, stack_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_stack: #{e}"
end
```

#### Using the get_promotion_stack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsStacksGetResponseBody>, Integer, Hash)> get_promotion_stack_with_http_info(campaign_id, stack_id)

```ruby
begin
  # Get Promotion Stack
  data, status_code, headers = api_instance.get_promotion_stack_with_http_info(campaign_id, stack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsStacksGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_stack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty Campaign&#x60;.  |  |
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

#### Using the get_promotion_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsTiersGetResponseBody>, Integer, Hash)> get_promotion_tier_with_http_info(promotion_tier_id)

```ruby
begin
  # Get Promotion Tier
  data, status_code, headers = api_instance.get_promotion_tier_with_http_info(promotion_tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsTiersGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->get_promotion_tier_with_http_info: #{e}"
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

This method enables you to list promotion stacks irrespective of the campaign they are associated with.   You can use filters in the query parameters to specify the stacks to be returned in the response.  ## Advanced filters for fetching promotion stacks  | **Filters** | **Examples** | | :--- | :--- | | Created Before | - `[created_at][before]=2021-12-30T13:52:18.227Z`<br>- `[filters][created_at][conditions][$before][0]=2021-12-30T13:52:18.227Z` | | Created After | - `[created_at][after]=2021-12-30T13:52:18.227Z`<br>- `[filters][created_at][conditions][$after][0]=2021-12-30T13:52:18.227Z` | | Updated Before | - `[updated_at][before]=2021-12-30T13:52:18.227Z`<br>- `[filters][updated_at][conditions][$before][0]=2021-12-30T13:52:18.227Z` | | Updated After | - `[updated_at][after]=2021-12-30T13:52:18.227Z`<br>- `[filters][updated_at][conditions][$after][0]=2021-12-30T13:52:18.227Z` |

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
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrderListAllPromotionStacks::CREATED_AT, # ParameterOrderListAllPromotionStacks | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
  created_at: VoucherifySdk::ParameterCreatedBeforeAfter.new, # ParameterCreatedBeforeAfter | A filter on the list based on the object `created_at` field. The value is a dictionary with the following options: `before`, `after`. A date value must be presented in ISO 8601 format (`2016-11-16T14:14:31Z` or `2016-11-16`). An example: `[created_at][before]=2017-09-08T13:52:18.227Z`
  updated_at: VoucherifySdk::ParameterUpdatedBeforeAfter.new # ParameterUpdatedBeforeAfter | A filter on the list based on the object `updated_at` field. The value is a dictionary with the following options: `before`, `after`. A date value must be presented in ISO 8601 format (`2016-11-16T14:14:31Z` or `2016-11-16`). An example: `[updated_at][before]=2017-09-08T13:52:18.227Z`
}

begin
  # List Promotion Stacks
  result = api_instance.list_all_promotion_stacks(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_all_promotion_stacks: #{e}"
end
```

#### Using the list_all_promotion_stacks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsStacksListResponseBody>, Integer, Hash)> list_all_promotion_stacks_with_http_info(opts)

```ruby
begin
  # List Promotion Stacks
  data, status_code, headers = api_instance.list_all_promotion_stacks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsStacksListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_all_promotion_stacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrderListAllPromotionStacks**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
| **created_at** | [**ParameterCreatedBeforeAfter**](.md) | A filter on the list based on the object &#x60;created_at&#x60; field. The value is a dictionary with the following options: &#x60;before&#x60;, &#x60;after&#x60;. A date value must be presented in ISO 8601 format (&#x60;2016-11-16T14:14:31Z&#x60; or &#x60;2016-11-16&#x60;). An example: &#x60;[created_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60; | [optional] |
| **updated_at** | [**ParameterUpdatedBeforeAfter**](.md) | A filter on the list based on the object &#x60;updated_at&#x60; field. The value is a dictionary with the following options: &#x60;before&#x60;, &#x60;after&#x60;. A date value must be presented in ISO 8601 format (&#x60;2016-11-16T14:14:31Z&#x60; or &#x60;2016-11-16&#x60;). An example: &#x60;[updated_at][before]&#x3D;2017-09-08T13:52:18.227Z&#x60; | [optional] |

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

#### Using the list_promotion_stacks_in_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsStacksListResponseBody>, Integer, Hash)> list_promotion_stacks_in_campaign_with_http_info(campaign_id)

```ruby
begin
  # List Promotion Stacks in Campaign
  data, status_code, headers = api_instance.list_promotion_stacks_in_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsStacksListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_promotion_stacks_in_campaign_with_http_info: #{e}"
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

#### Using the list_promotion_tiers_from_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsTiersListResponseBody>, Integer, Hash)> list_promotion_tiers_from_campaign_with_http_info(campaign_id)

```ruby
begin
  # List Promotion Tiers from Campaign
  data, status_code, headers = api_instance.list_promotion_tiers_from_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsTiersListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->list_promotion_tiers_from_campaign_with_http_info: #{e}"
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
campaign_id = 'campaign_id_example' # String | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty Campaign`. 
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

#### Using the update_promotion_stack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PromotionsStacksUpdateResponseBody>, Integer, Hash)> update_promotion_stack_with_http_info(campaign_id, stack_id, opts)

```ruby
begin
  # Update Promotion Stack
  data, status_code, headers = api_instance.update_promotion_stack_with_http_info(campaign_id, stack_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PromotionsStacksUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PromotionsApi->update_promotion_stack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | ID of the promotion campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty Campaign&#x60;.  |  |
| **stack_id** | **String** | Promotion stack ID. |  |
| **promotions_stacks_update_request_body** | [**PromotionsStacksUpdateRequestBody**](PromotionsStacksUpdateRequestBody.md) | Specify the promotion stack parameters that you would like to update. | [optional] |

### Return type

[**PromotionsStacksUpdateResponseBody**](PromotionsStacksUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

