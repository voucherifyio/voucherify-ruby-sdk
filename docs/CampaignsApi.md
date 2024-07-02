# VoucherifySdk::CampaignsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_voucher_with_specific_code_to_campaign**](CampaignsApi.md#add_voucher_with_specific_code_to_campaign) | **POST** /v1/campaigns/{campaignId}/vouchers/{code} | Add Voucher with Specific Code to Campaign |
| [**add_vouchers_to_campaign**](CampaignsApi.md#add_vouchers_to_campaign) | **POST** /v1/campaigns/{campaignId}/vouchers | Add Vouchers to Campaign |
| [**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /v1/campaigns | Create Campaign |
| [**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /v1/campaigns/{campaignId} | Delete Campaign |
| [**disable_campaign**](CampaignsApi.md#disable_campaign) | **POST** /v1/campaigns/{campaignId}/disable | Disable Campaign |
| [**enable_campaign**](CampaignsApi.md#enable_campaign) | **POST** /v1/campaigns/{campaignId}/enable | Enable Campaign |
| [**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /v1/campaigns/{campaignId} | Get Campaign |
| [**import_vouchers_to_campaign**](CampaignsApi.md#import_vouchers_to_campaign) | **POST** /v1/campaigns/{campaignId}/import | Import Vouchers to Campaign |
| [**import_vouchers_to_campaign_using_csv**](CampaignsApi.md#import_vouchers_to_campaign_using_csv) | **POST** /v1/campaigns/{campaignId}/importCSV | Import Vouchers to Campaign by CSV |
| [**list_campaigns**](CampaignsApi.md#list_campaigns) | **GET** /v1/campaigns | List Campaigns |
| [**update_campaign**](CampaignsApi.md#update_campaign) | **PUT** /v1/campaigns/{campaignId} | Update Campaign |


## add_voucher_with_specific_code_to_campaign

> <CampaignsVouchersCreateResponseBody> add_voucher_with_specific_code_to_campaign(campaign_id, code, opts)

Add Voucher with Specific Code to Campaign

This method gives a possibility to add a new voucher to an existing campaign. The voucher definition will be inherited from the definition kept in the campaign profile. However, you are able to overwrite a few properties inherited from the campaign.

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the campaign to which voucher will be added. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.
code = 'code_example' # String | A custom **code** that identifies the voucher.
opts = {
  campaigns_vouchers_create_request_body: VoucherifySdk::CampaignsVouchersCreateRequestBody.new # CampaignsVouchersCreateRequestBody | Specify the voucher parameters that you would like to overwrite.
}

begin
  # Add Voucher with Specific Code to Campaign
  result = api_instance.add_voucher_with_specific_code_to_campaign(campaign_id, code, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->add_voucher_with_specific_code_to_campaign: #{e}"
end
```

#### Using the add_voucher_with_specific_code_to_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsVouchersCreateResponseBody>, Integer, Hash)> add_voucher_with_specific_code_to_campaign_with_http_info(campaign_id, code, opts)

```ruby
begin
  # Add Voucher with Specific Code to Campaign
  data, status_code, headers = api_instance.add_voucher_with_specific_code_to_campaign_with_http_info(campaign_id, code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsVouchersCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->add_voucher_with_specific_code_to_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the campaign to which voucher will be added. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |
| **code** | **String** | A custom **code** that identifies the voucher. |  |
| **campaigns_vouchers_create_request_body** | [**CampaignsVouchersCreateRequestBody**](CampaignsVouchersCreateRequestBody.md) | Specify the voucher parameters that you would like to overwrite. | [optional] |

### Return type

[**CampaignsVouchersCreateResponseBody**](CampaignsVouchersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_vouchers_to_campaign

> <CampaignsVouchersCreateResponseBody> add_vouchers_to_campaign(campaign_id, opts)

Add Vouchers to Campaign

This method gives the possibility to push new vouchers to an existing campaign. New vouchers will inherit properties from the campaign profile. However, it is possible to overwrite some of them in the request body. If you provide an optional `code_config` parameter with a voucher code configuration, then it will be used to generate new voucher codes. Otherwise, the voucher code configuration from the campaign will be used.  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the campaign to which voucher(s) will be added. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.
opts = {
  vouchers_count: 56, # Integer | Number of vouchers that should be added.
  campaigns_vouchers_create_in_bulk_request_body: VoucherifySdk::CampaignsVouchersCreateInBulkRequestBody.new # CampaignsVouchersCreateInBulkRequestBody | Specify the voucher parameters that you would like to overwrite.
}

begin
  # Add Vouchers to Campaign
  result = api_instance.add_vouchers_to_campaign(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->add_vouchers_to_campaign: #{e}"
end
```

#### Using the add_vouchers_to_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsVouchersCreateResponseBody>, Integer, Hash)> add_vouchers_to_campaign_with_http_info(campaign_id, opts)

```ruby
begin
  # Add Vouchers to Campaign
  data, status_code, headers = api_instance.add_vouchers_to_campaign_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsVouchersCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->add_vouchers_to_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the campaign to which voucher(s) will be added. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |
| **vouchers_count** | **Integer** | Number of vouchers that should be added. | [optional] |
| **campaigns_vouchers_create_in_bulk_request_body** | [**CampaignsVouchersCreateInBulkRequestBody**](CampaignsVouchersCreateInBulkRequestBody.md) | Specify the voucher parameters that you would like to overwrite. | [optional] |

### Return type

[**CampaignsVouchersCreateResponseBody**](CampaignsVouchersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_campaign

> <CampaignsCreateResponseBody> create_campaign(opts)

Create Campaign

Method to create a batch of vouchers aggregated in one campaign. You can choose a variety of voucher types and define a unique pattern for generating codes.   <!-- theme: info -->  > 📘 Global uniqueness > > All campaign codes are unique across the whole project. Voucherify will not allow you to generate 2 campaigns with the same coupon code.   <!-- theme: warning --> > 🚧 Code generation status > > This is an asynchronous action; you can't read or modify a newly created campaign until the code generation is completed. See the `creation_status` field in the <!-- [campaign object](OpenAPI.json/components/schemas/Campaign) -->[campaign object](ref:get-campaign) description.

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

api_instance = VoucherifySdk::CampaignsApi.new
opts = {
  campaigns_create_request_body: VoucherifySdk::CampaignsCreateDiscountCouponsCampaign.new # CampaignsCreateRequestBody | Specify the details of the campaign that you would like to create.
}

begin
  # Create Campaign
  result = api_instance.create_campaign(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign: #{e}"
end
```

#### Using the create_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsCreateResponseBody>, Integer, Hash)> create_campaign_with_http_info(opts)

```ruby
begin
  # Create Campaign
  data, status_code, headers = api_instance.create_campaign_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->create_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns_create_request_body** | [**CampaignsCreateRequestBody**](CampaignsCreateRequestBody.md) | Specify the details of the campaign that you would like to create. | [optional] |

### Return type

[**CampaignsCreateResponseBody**](CampaignsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_campaign

> <CampaignsDeleteResponseBody> delete_campaign(campaign_id, opts)

Delete Campaign

Deletes a campaign and all related vouchers. This action cannot be undone. Also, this method immediately removes any redemptions on the voucher.  If the `force` parameter is set to `false` or not set at all, the campaign and all related vouchers will be moved to [the bin](ref:list-bin-entries).  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.
opts = {
  force: true # Boolean | If this flag is set to `true`, the campaign and related vouchers will be removed permanently. If it is set to `false` or not set at all, the campaign and related vouchers will be moved to the bin. Going forward, the user will be able to create the next campaign with exactly the same name.
}

begin
  # Delete Campaign
  result = api_instance.delete_campaign(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaign: #{e}"
end
```

#### Using the delete_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsDeleteResponseBody>, Integer, Hash)> delete_campaign_with_http_info(campaign_id, opts)

```ruby
begin
  # Delete Campaign
  data, status_code, headers = api_instance.delete_campaign_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsDeleteResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->delete_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |
| **force** | **Boolean** | If this flag is set to &#x60;true&#x60;, the campaign and related vouchers will be removed permanently. If it is set to &#x60;false&#x60; or not set at all, the campaign and related vouchers will be moved to the bin. Going forward, the user will be able to create the next campaign with exactly the same name. | [optional] |

### Return type

[**CampaignsDeleteResponseBody**](CampaignsDeleteResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_campaign

> <CampaignsDisableResponseBody> disable_campaign(campaign_id)

Disable Campaign

There are various times when you'll want to manage a campaign's accessibility. This can be done by two API methods for managing the campaign state - *enable* and *disable*.    Sets campaign state to **inactive**. The vouchers in this campaign can no longer be redeemed.

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the campaign being disabled. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.

begin
  # Disable Campaign
  result = api_instance.disable_campaign(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->disable_campaign: #{e}"
end
```

#### Using the disable_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsDisableResponseBody>, Integer, Hash)> disable_campaign_with_http_info(campaign_id)

```ruby
begin
  # Disable Campaign
  data, status_code, headers = api_instance.disable_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsDisableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->disable_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the campaign being disabled. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |

### Return type

[**CampaignsDisableResponseBody**](CampaignsDisableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_campaign

> <CampaignsEnableResponseBody> enable_campaign(campaign_id)

Enable Campaign

There are various times when you'll want to manage a campaign's accessibility. This can be done by two API methods for managing the campaign state - *enable* and *disable*.    Sets campaign state to **active**. The vouchers in this campaign can be redeemed - only if the redemption occurs after the start date of the campaign and voucher and the voucher and campaign are not expired.

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the campaign being enabled. You can either pass the campaign ID, which was assigned by Voucherify or the name of the campaign as the path parameter value.

begin
  # Enable Campaign
  result = api_instance.enable_campaign(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->enable_campaign: #{e}"
end
```

#### Using the enable_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsEnableResponseBody>, Integer, Hash)> enable_campaign_with_http_info(campaign_id)

```ruby
begin
  # Enable Campaign
  data, status_code, headers = api_instance.enable_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsEnableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->enable_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the campaign being enabled. You can either pass the campaign ID, which was assigned by Voucherify or the name of the campaign as the path parameter value. |  |

### Return type

[**CampaignsEnableResponseBody**](CampaignsEnableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign

> <CampaignsGetResponseBody> get_campaign(campaign_id)

Get Campaign

Retrieves the campaign with the given campaign ID or campaign name.

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.

begin
  # Get Campaign
  result = api_instance.get_campaign(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->get_campaign: #{e}"
end
```

#### Using the get_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsGetResponseBody>, Integer, Hash)> get_campaign_with_http_info(campaign_id)

```ruby
begin
  # Get Campaign
  data, status_code, headers = api_instance.get_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->get_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |

### Return type

[**CampaignsGetResponseBody**](CampaignsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_vouchers_to_campaign

> <CampaignsImportCreateResponseBody> import_vouchers_to_campaign(campaign_id, opts)

Import Vouchers to Campaign

Imports vouchers to an **existing** campaign.  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The ID of an existing campaign to which you're importing the codes. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.
opts = {
  campaigns_import_voucher_item: [VoucherifySdk::CampaignsImportVoucherItem.new({code: 'code_example'})] # Array<CampaignsImportVoucherItem> | Discount type, expiration date and the remaining attributes will be taken from the <!-- [Campaign](OpenAPI.json/components/schemas/Campaign) -->[Campaign](ref:get-campaign) settings.
}

begin
  # Import Vouchers to Campaign
  result = api_instance.import_vouchers_to_campaign(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->import_vouchers_to_campaign: #{e}"
end
```

#### Using the import_vouchers_to_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsImportCreateResponseBody>, Integer, Hash)> import_vouchers_to_campaign_with_http_info(campaign_id, opts)

```ruby
begin
  # Import Vouchers to Campaign
  data, status_code, headers = api_instance.import_vouchers_to_campaign_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsImportCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->import_vouchers_to_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID of an existing campaign to which you&#39;re importing the codes. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |
| **campaigns_import_voucher_item** | [**Array&lt;CampaignsImportVoucherItem&gt;**](CampaignsImportVoucherItem.md) | Discount type, expiration date and the remaining attributes will be taken from the &lt;!-- [Campaign](OpenAPI.json/components/schemas/Campaign) --&gt;[Campaign](ref:get-campaign) settings. | [optional] |

### Return type

[**CampaignsImportCreateResponseBody**](CampaignsImportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_vouchers_to_campaign_using_csv

> <CampaignsImportCsvCreateResponseBody> import_vouchers_to_campaign_using_csv(campaign_id, file)

Import Vouchers to Campaign by CSV

Imports vouchers to an **existing** campaign.     The CSV file has to include headers in the first line.   Curl Example <!-- title: \"Example Request\" lineNumbers: true --> ```cURL curl -X POST \\   https://api.voucherify.io/v1/campaigns/TEST-CAMPAIGN/importCSV \\   -F file=@/path/to/campaigns.csv \\   -H \"X-App-Id: c70a6f00-cf91-4756-9df5-47628850002b\" \\   -H \"X-App-Token: 3266b9f8-e246-4f79-bdf0-833929b1380c\" ```  You can import values for the following fields: `Code` (**required**), `Category`, `Active`. In a gift cards import, you can also include the current card balance using the `Gift Amount` header and the amount that was redeemed using the `Redeemed Amount` header. In a loyalty cards import, you can also include the current loyalty card score in points using the `Loyalty Points` header. Remaining CSV columns will be mapped to metadata properties.   Discount type, time limits, and validation rules will be taken from the <!-- [campaign object](OpenAPI.json/components/schemas/Campaign) -->[campaign object](ref:get-campaign) settings.    | **Active** | **Code** | **Loyalty Points** | **Gift Amount** | **Redeemed Amount** | **Redeemed Quantity** | **Category** | **Custom_metadata_property** | |---|---|---|---|---|---|---|---| | Use `true` or `false` to enable or disable the voucher; this flag can be used to turn off the ability to redeem a voucher even though it is within the campaign's start/end validity timeframe. | The unique voucher code. | The number of points to be added to the loyalty card. If you leave this undefined, then the initial number of points will be set according to the campaign settings.<br>Context: `LOYALTY_PROGRAM` | The initial gift card balance.<br>Context: `GIFT_VOUCHERS` | The amount that was redeemed from the available balance on a gift card. | The number of times the voucher has been redeemed. | A custom tag for the voucher to help you filter codes; you can either import the category name or a unique Voucherify-assigned category ID. | Any additional data that you would like to store for the given loyalty card as a Custom attribute. Remember to define the metadata schema in the Dashboard prior to importing codes. | |<!-- theme: info -->  > 📘 Active > > The CSV file is allowed in two versions; either with or without a column titled `Active`. It indicates whether the voucher is enabled after the import event.    This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the campaign being enabled. You can either pass the campaign ID, which was assigned by Voucherify or the name of the campaign as the path parameter value.
file = File.new('/path/to/some/file') # File | File path.

begin
  # Import Vouchers to Campaign by CSV
  result = api_instance.import_vouchers_to_campaign_using_csv(campaign_id, file)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->import_vouchers_to_campaign_using_csv: #{e}"
end
```

#### Using the import_vouchers_to_campaign_using_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsImportCsvCreateResponseBody>, Integer, Hash)> import_vouchers_to_campaign_using_csv_with_http_info(campaign_id, file)

```ruby
begin
  # Import Vouchers to Campaign by CSV
  data, status_code, headers = api_instance.import_vouchers_to_campaign_using_csv_with_http_info(campaign_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsImportCsvCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->import_vouchers_to_campaign_using_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the campaign being enabled. You can either pass the campaign ID, which was assigned by Voucherify or the name of the campaign as the path parameter value. |  |
| **file** | **File** | File path. |  |

### Return type

[**CampaignsImportCsvCreateResponseBody**](CampaignsImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_campaigns

> <CampaignsListResponseBody> list_campaigns(opts)

List Campaigns

Retrieve a list of campaigns in a project.   The campaigns are returned sorted by creation date, with the most recent campaigns appearing first.    When you get a list of campaigns, you can optionally specify query parameters to customize the amount of campaigns returned per call using `limit`, which page of campaigns to return using `page`, sort the campaigns using the `order` query parameter and filter the results by the `campaign_type`.  This method will return an error when trying to return a limit of more than 100 campaigns.

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

api_instance = VoucherifySdk::CampaignsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  campaign_type: VoucherifySdk::ParameterCampaignType::PROMOTION, # ParameterCampaignType | This attribute allows filtering by campaign type.
  expand: VoucherifySdk::ParameterExpandListCampaigns::CATEGORY, # ParameterExpandListCampaigns | Include an expanded `categories` object in the response.
  order: VoucherifySdk::ParameterOrderListCampaigns::CREATED_AT # ParameterOrderListCampaigns | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
}

begin
  # List Campaigns
  result = api_instance.list_campaigns(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->list_campaigns: #{e}"
end
```

#### Using the list_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsListResponseBody>, Integer, Hash)> list_campaigns_with_http_info(opts)

```ruby
begin
  # List Campaigns
  data, status_code, headers = api_instance.list_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->list_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **campaign_type** | [**ParameterCampaignType**](.md) | This attribute allows filtering by campaign type. | [optional] |
| **expand** | [**ParameterExpandListCampaigns**](.md) | Include an expanded &#x60;categories&#x60; object in the response. | [optional][default to &#39;category&#39;] |
| **order** | [**ParameterOrderListCampaigns**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**CampaignsListResponseBody**](CampaignsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_campaign

> <CampaignsUpdateResponseBody> update_campaign(campaign_id, opts)

Update Campaign

Updates the specified campaign by setting the values of the parameters passed in the request body. Any parameters not provided in the payload will be left unchanged.   Fields other than the ones listed in the request body won't be modified. Even if provided, they will be silently skipped.    <!-- theme: warning --> > #### Vouchers will be affected > > This method will update vouchers aggregated in the campaign. It will affect all vouchers that are not published or redeemed yet.

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

api_instance = VoucherifySdk::CampaignsApi.new
campaign_id = 'campaign_id_example' # String | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value.
opts = {
  campaigns_update_request_body: VoucherifySdk::CampaignsUpdateDiscountCouponsCampaign.new # CampaignsUpdateRequestBody | Specify the campaign parameters to be updated.
}

begin
  # Update Campaign
  result = api_instance.update_campaign(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->update_campaign: #{e}"
end
```

#### Using the update_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CampaignsUpdateResponseBody>, Integer, Hash)> update_campaign_with_http_info(campaign_id, opts)

```ruby
begin
  # Update Campaign
  data, status_code, headers = api_instance.update_campaign_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CampaignsUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling CampaignsApi->update_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value. |  |
| **campaigns_update_request_body** | [**CampaignsUpdateRequestBody**](CampaignsUpdateRequestBody.md) | Specify the campaign parameters to be updated. | [optional] |

### Return type

[**CampaignsUpdateResponseBody**](CampaignsUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

