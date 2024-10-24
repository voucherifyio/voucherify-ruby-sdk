# VoucherifySdk::ReferralsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**referrals_add_holders**](ReferralsApi.md#referrals_add_holders) | **POST** /v1/referrals/members/{memberId}/holders | Add Referral Code Holders |
| [**referrals_add_holders1**](ReferralsApi.md#referrals_add_holders1) | **POST** /v1/referrals/{campaignId}/members/{memberId}/holders | Add Referral Code Holders |
| [**referrals_code_holders**](ReferralsApi.md#referrals_code_holders) | **GET** /v1/referrals/{campaignId}/members/{memberId}/holders | List Referral Code Holders |
| [**referrals_code_holders1**](ReferralsApi.md#referrals_code_holders1) | **GET** /v1/referrals/members/{memberId}/holders | List Referral Code Holders |
| [**referrals_remove_holder**](ReferralsApi.md#referrals_remove_holder) | **DELETE** /v1/referrals/members/{memberId}/holders/{holderId} | Remove Referral Card Holder |
| [**referrals_remove_holder1**](ReferralsApi.md#referrals_remove_holder1) | **DELETE** /v1/referrals/{campaignId}/members/{memberId}/holders/{holderId} | Remove Referral Card Holder |


## referrals_add_holders

> <ReferralsMembersHoldersCreateInBulkResponseBody> referrals_add_holders(member_id, opts)

Add Referral Code Holders

Adds new holders to a referral code as **referees**. The data sent in the request is upserted into the customer data. If the request returns an error even for one customer, you have to resend the whole request. Customer data is upserted if the data for all customers is correct. To use this endpoint, you must have the following permissions: - Create and modify Customers and Segments (customers.modify) - Publish Voucher (vouchers.publish)  👍 To add a holder as a referer, use the Create Publication endpoint.  📘 Alternative endpoint This endpoint is an alternative to the Add Referral Code Holders endpoint. The URL was re-designed to retrieve the referral member holders without providing the campaignId as a path paremeter.

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

api_instance = VoucherifySdk::ReferralsApi.new
member_id = 'member_id_example' # String | Unique referral code or its identifier.
opts = {
  referrals_members_holders_create_in_bulk_request_body: VoucherifySdk::ReferralsMembersHoldersCreateInBulkRequestBody.new # ReferralsMembersHoldersCreateInBulkRequestBody | Specify the customer data to be upserted as redeemable holders.
}

begin
  # Add Referral Code Holders
  result = api_instance.referrals_add_holders(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_add_holders: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **referrals_members_holders_create_in_bulk_request_body** | [**ReferralsMembersHoldersCreateInBulkRequestBody**](ReferralsMembersHoldersCreateInBulkRequestBody.md) | Specify the customer data to be upserted as redeemable holders. | [optional] |

### Return type

[**ReferralsMembersHoldersCreateInBulkResponseBody**](ReferralsMembersHoldersCreateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## referrals_add_holders1

> <ReferralsMembersHoldersCreateInBulkResponseBody> referrals_add_holders1(campaign_id, member_id, opts)

Add Referral Code Holders

Adds new holders to a referral code as **referees**. The data sent in the request is upserted into the customer data. If the request returns an error even for one customer, you have to resend the whole request. Customer data is upserted if the data for all customers is correct. To use this endpoint, you must have the following permissions: - Create and modify Customers and Segments (customers.modify) - Publish Voucher (vouchers.publish)  👍 To add a holder as a referer, use the Create Publication endpoint.

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

api_instance = VoucherifySdk::ReferralsApi.new
campaign_id = 'campaign_id_example' # String | Unique identifier of a referral program campaign.
member_id = 'member_id_example' # String | Unique referral code or its identifier.
opts = {
  referrals_members_holders_create_in_bulk_request_body: VoucherifySdk::ReferralsMembersHoldersCreateInBulkRequestBody.new # ReferralsMembersHoldersCreateInBulkRequestBody | Specify the customer data to be upserted as redeemable holders.
}

begin
  # Add Referral Code Holders
  result = api_instance.referrals_add_holders1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_add_holders1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique identifier of a referral program campaign. |  |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **referrals_members_holders_create_in_bulk_request_body** | [**ReferralsMembersHoldersCreateInBulkRequestBody**](ReferralsMembersHoldersCreateInBulkRequestBody.md) | Specify the customer data to be upserted as redeemable holders. | [optional] |

### Return type

[**ReferralsMembersHoldersCreateInBulkResponseBody**](ReferralsMembersHoldersCreateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## referrals_code_holders

> <ReferralsMembersHoldersListResponseBody> referrals_code_holders(campaign_id, member_id, opts)

List Referral Code Holders

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

api_instance = VoucherifySdk::ReferralsApi.new
campaign_id = 'campaign_id_example' # String | Unique identifier of a referral program campaign.
member_id = 'member_id_example' # String | Unique referral code or its identifier.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListRedeemables::ID, # ParameterOrderListRedeemables | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  filters: VoucherifySdk::ParameterFiltersListReferralsRedeemableHolders.new # ParameterFiltersListReferralsRedeemableHolders | Filters for listing customer redeemables.
}

begin
  # List Referral Code Holders
  result = api_instance.referrals_code_holders(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_code_holders: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique identifier of a referral program campaign. |  |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListRedeemables**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **filters** | [**ParameterFiltersListReferralsRedeemableHolders**](.md) | Filters for listing customer redeemables. | [optional] |

### Return type

[**ReferralsMembersHoldersListResponseBody**](ReferralsMembersHoldersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## referrals_code_holders1

> <ReferralsMembersHoldersListResponseBody> referrals_code_holders1(member_id, opts)

List Referral Code Holders

Retrieves the holders of the referral code from a referral campaign. To use this endpoint, you must have the following permissions: - Read Customers (customers.details.read)  📘 Alternative endpoint This endpoint is an alternative to the List Member Holders endpoint. The URL was re-designed to retrieve the referral member holders without providing the campaignId as a path paremeter.

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

api_instance = VoucherifySdk::ReferralsApi.new
member_id = 'member_id_example' # String | Unique referral code or its identifier.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListRedeemables::ID, # ParameterOrderListRedeemables | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
  filters: VoucherifySdk::ParameterFiltersListReferralsRedeemableHolders.new # ParameterFiltersListReferralsRedeemableHolders | Filters for listing customer redeemables.
}

begin
  # List Referral Code Holders
  result = api_instance.referrals_code_holders1(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_code_holders1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListRedeemables**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |
| **filters** | [**ParameterFiltersListReferralsRedeemableHolders**](.md) | Filters for listing customer redeemables. | [optional] |

### Return type

[**ReferralsMembersHoldersListResponseBody**](ReferralsMembersHoldersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## referrals_remove_holder

> referrals_remove_holder(member_id, holder_id)

Remove Referral Card Holder

Removes the holder from a referral card. You can remove a referee only. To use this endpoint, you must have the following permissions: - Create and modify Customers and Segments (customers.modify) - Publish Voucher (vouchers.publish)  📘 Alternative endpoint This endpoint is an alternative to the Remove Referral Card Holder endpoint. The URL was re-designed to retrieve the referral member holders without providing the campaignId as a path paremeter.

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

api_instance = VoucherifySdk::ReferralsApi.new
member_id = 'member_id_example' # String | Unique referral code or its identifier.
holder_id = 'holder_id_example' # String | Unique identifier of a redeemable holder.

begin
  # Remove Referral Card Holder
  api_instance.referrals_remove_holder(member_id, holder_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_remove_holder: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **holder_id** | **String** | Unique identifier of a redeemable holder. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## referrals_remove_holder1

> referrals_remove_holder1(campaign_id, member_id, holder_id)

Remove Referral Card Holder

Removes the holder from a referral card. You can remove a referee only. To use this endpoint, you must have the following permissions: - Create and modify Customers and Segments (customers.modify) - Publish Voucher (vouchers.publish)

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

api_instance = VoucherifySdk::ReferralsApi.new
campaign_id = 'campaign_id_example' # String | Unique identifier of a referral program campaign.
member_id = 'member_id_example' # String | Unique referral code or its identifier.
holder_id = 'holder_id_example' # String | Unique identifier of a redeemable holder.

begin
  # Remove Referral Card Holder
  api_instance.referrals_remove_holder1(campaign_id, member_id, holder_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ReferralsApi->referrals_remove_holder1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique identifier of a referral program campaign. |  |
| **member_id** | **String** | Unique referral code or its identifier. |  |
| **holder_id** | **String** | Unique identifier of a redeemable holder. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

