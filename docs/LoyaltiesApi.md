# VoucherifySdk::LoyaltiesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_member_pending_points**](LoyaltiesApi.md#activate_member_pending_points) | **POST** /v1/loyalties/members/{memberId}/pending-points/{pendingPointsId}/activate | Activate Member Pending Points |
| [**add_member**](LoyaltiesApi.md#add_member) | **POST** /v1/loyalties/{campaignId}/members | Add Member |
| [**cancel_member_pending_points**](LoyaltiesApi.md#cancel_member_pending_points) | **POST** /v1/loyalties/members/{memberId}/pending-points/{pendingPointsId}/cancel | Cancel Member Pending Points |
| [**create_earning_rule**](LoyaltiesApi.md#create_earning_rule) | **POST** /v1/loyalties/{campaignId}/earning-rules | Create Earning Rule |
| [**create_in_bulk_loyalty_tiers**](LoyaltiesApi.md#create_in_bulk_loyalty_tiers) | **POST** /v1/loyalties/{campaignId}/tiers | Create loyalty tiers |
| [**create_loyalty_program**](LoyaltiesApi.md#create_loyalty_program) | **POST** /v1/loyalties | Create Loyalty Campaign |
| [**create_points_expiration_export**](LoyaltiesApi.md#create_points_expiration_export) | **POST** /v1/loyalties/{campaignId}/points-expiration/export | Export Loyalty Campaign Point Expiration |
| [**create_reward_assignment1**](LoyaltiesApi.md#create_reward_assignment1) | **POST** /v1/loyalties/{campaignId}/rewards | Create Reward Assignment |
| [**delete_earning_rule**](LoyaltiesApi.md#delete_earning_rule) | **DELETE** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId} | Delete Earning Rule |
| [**delete_loyalty_program**](LoyaltiesApi.md#delete_loyalty_program) | **DELETE** /v1/loyalties/{campaignId} | Delete Loyalty Campaign |
| [**delete_reward_assignment1**](LoyaltiesApi.md#delete_reward_assignment1) | **DELETE** /v1/loyalties/{campaignId}/rewards/{assignmentId} | Delete Reward Assignment |
| [**disable_earning_rule**](LoyaltiesApi.md#disable_earning_rule) | **POST** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/disable | Disable Earning Rule |
| [**enable_earning_rule**](LoyaltiesApi.md#enable_earning_rule) | **POST** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/enable | Enable Earning Rule |
| [**export_loyalty_card_transactions**](LoyaltiesApi.md#export_loyalty_card_transactions) | **POST** /v1/loyalties/members/{memberId}/transactions/export | Export Loyalty Card Transactions |
| [**export_loyalty_card_transactions1**](LoyaltiesApi.md#export_loyalty_card_transactions1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/transactions/export | Export Loyalty Card Transactions |
| [**get_earning_rule**](LoyaltiesApi.md#get_earning_rule) | **GET** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId} | Get Earning Rule |
| [**get_loyalty_program**](LoyaltiesApi.md#get_loyalty_program) | **GET** /v1/loyalties/{campaignId} | Get Loyalty Campaign |
| [**get_loyalty_tier**](LoyaltiesApi.md#get_loyalty_tier) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId} | Get Loyalty Tier |
| [**get_member**](LoyaltiesApi.md#get_member) | **GET** /v1/loyalties/members/{memberId} | Get Member |
| [**get_member1**](LoyaltiesApi.md#get_member1) | **GET** /v1/loyalties/{campaignId}/members/{memberId} | Get Member |
| [**get_reward_assignment1**](LoyaltiesApi.md#get_reward_assignment1) | **GET** /v1/loyalties/{campaignId}/reward-assignments/{assignmentId} | Get Reward Assignment |
| [**get_reward_assignment2**](LoyaltiesApi.md#get_reward_assignment2) | **GET** /v1/loyalties/{campaignId}/rewards/{assignmentId} | Get Reward Assignment |
| [**get_reward_details**](LoyaltiesApi.md#get_reward_details) | **GET** /v1/loyalties/{campaignId}/reward-assignments/{assignmentId}/reward | Get Reward Details |
| [**list_campaign_pending_points**](LoyaltiesApi.md#list_campaign_pending_points) | **GET** /v1/loyalties/{campaignId}/pending-points | List Campaign Pending Points |
| [**list_earning_rules**](LoyaltiesApi.md#list_earning_rules) | **GET** /v1/loyalties/{campaignId}/earning-rules | List Earning Rules |
| [**list_loyalty_card_transactions**](LoyaltiesApi.md#list_loyalty_card_transactions) | **GET** /v1/loyalties/members/{memberId}/transactions | List Loyalty Card Transactions |
| [**list_loyalty_card_transactions1**](LoyaltiesApi.md#list_loyalty_card_transactions1) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/transactions | List Loyalty Card Transactions |
| [**list_loyalty_programs**](LoyaltiesApi.md#list_loyalty_programs) | **GET** /v1/loyalties | List Loyalty Campaigns |
| [**list_loyalty_tier_earning_rules**](LoyaltiesApi.md#list_loyalty_tier_earning_rules) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/earning-rules | List Loyalty Tier Earning Rules |
| [**list_loyalty_tier_rewards**](LoyaltiesApi.md#list_loyalty_tier_rewards) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/rewards | List Loyalty Tier Rewards |
| [**list_loyalty_tiers**](LoyaltiesApi.md#list_loyalty_tiers) | **GET** /v1/loyalties/{campaignId}/tiers | List Loyalty Tiers |
| [**list_member_activity**](LoyaltiesApi.md#list_member_activity) | **GET** /v1/loyalties/members/{memberId}/activity | List Member Activity |
| [**list_member_activity1**](LoyaltiesApi.md#list_member_activity1) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/activity | List Member Activity |
| [**list_member_loyalty_tier**](LoyaltiesApi.md#list_member_loyalty_tier) | **GET** /v1/loyalties/members/{memberId}/tiers | List Member&#39;s Loyalty Tiers |
| [**list_member_pending_points**](LoyaltiesApi.md#list_member_pending_points) | **GET** /v1/loyalties/members/{memberId}/pending-points | List Member Pending Points |
| [**list_member_pending_points1**](LoyaltiesApi.md#list_member_pending_points1) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/pending-points | List Member Pending Points |
| [**list_member_rewards**](LoyaltiesApi.md#list_member_rewards) | **GET** /v1/loyalties/members/{memberId}/rewards | List Member Rewards |
| [**list_members**](LoyaltiesApi.md#list_members) | **GET** /v1/loyalties/{campaignId}/members | List Members |
| [**list_points_expiration**](LoyaltiesApi.md#list_points_expiration) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/points-expiration | List Loyalty Card Point Expiration |
| [**list_reward_assignments1**](LoyaltiesApi.md#list_reward_assignments1) | **GET** /v1/loyalties/{campaignId}/reward-assignments | List Reward Assignments |
| [**list_reward_assignments2**](LoyaltiesApi.md#list_reward_assignments2) | **GET** /v1/loyalties/{campaignId}/rewards | List Reward Assignments |
| [**redeem_reward**](LoyaltiesApi.md#redeem_reward) | **POST** /v1/loyalties/members/{memberId}/redemption | Redeem Reward |
| [**redeem_reward1**](LoyaltiesApi.md#redeem_reward1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/redemption | Redeem Reward |
| [**transfer_points**](LoyaltiesApi.md#transfer_points) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/transfers | Transfer Loyalty Points |
| [**update_earning_rule**](LoyaltiesApi.md#update_earning_rule) | **PUT** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId} | Update Earning Rule |
| [**update_loyalty_card_balance**](LoyaltiesApi.md#update_loyalty_card_balance) | **POST** /v1/loyalties/members/{memberId}/balance | Add or Remove Loyalty Card Balance |
| [**update_loyalty_card_balance1**](LoyaltiesApi.md#update_loyalty_card_balance1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/balance | Add or Remove Loyalty Card Balance |
| [**update_loyalty_program**](LoyaltiesApi.md#update_loyalty_program) | **PUT** /v1/loyalties/{campaignId} | Update Loyalty Campaign |
| [**update_reward_assignment1**](LoyaltiesApi.md#update_reward_assignment1) | **PUT** /v1/loyalties/{campaignId}/rewards/{assignmentId} | Update Reward Assignment |


## activate_member_pending_points

> <LoyaltiesMembersPendingPointsActivateResponseBody> activate_member_pending_points(member_id, pending_points_id)

Activate Member Pending Points

>🚧 Beta endpoint The endpoint is behind a feature flag as it is still in development. Contact [Voucherify support](https://www.voucherify.io/contact-support) to unlock the feature for your organization. All current parameters and fields are listed and described. Activate manually the pending points and add them to the loyalty card. The pending points are determined by the pending point ID. Once activated, the pending point entry with that ID is not listed by the endpoints: List member (with campaign ID, without campaign ID), List campaign pending points. This **POST** method does not require a request body.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card code assigned to a particular customer.
pending_points_id = 'pending_points_id_example' # String | Unique pending point identifier, assigned by Voucherify.

begin
  # Activate Member Pending Points
  result = api_instance.activate_member_pending_points(member_id, pending_points_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->activate_member_pending_points: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card code assigned to a particular customer. |  |
| **pending_points_id** | **String** | Unique pending point identifier, assigned by Voucherify. |  |

### Return type

[**LoyaltiesMembersPendingPointsActivateResponseBody**](LoyaltiesMembersPendingPointsActivateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_member

> <LoyaltiesMembersCreateResponseBody> add_member(campaign_id, opts)

Add Member

This method assigns a loyalty card to a customer. It selects a loyalty card suitable for publication, adds a publish entry, and returns the published voucher.   A voucher is suitable for publication when its active and hasnt been published yet.    📘 Auto-update campaign  In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use **auto-update** campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID of the loyalty program.
opts = {
  loyalties_members_create_request_body: VoucherifySdk::LoyaltiesMembersCreateRequestBody.new # LoyaltiesMembersCreateRequestBody | Provide details to whom the loyalty card should be assigned.     You can choose to either specify the exact loyalty card code that you want to publish from existin (non-assigned) codes, or choose not to specify a voucher code. If you choose not to specify a code in the request paylaod, then the system will choose the next available voucher code available to be assigned to a customer.   You can also include metadata in the request payload. This metadata will be assigned to the publication object, but will not be returned in the response to this endpoint. To see of publications (assignments of particular codes to customers) and publication metadata, use the List Publications endpoint.
}

begin
  # Add Member
  result = api_instance.add_member(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->add_member: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID of the loyalty program. |  |
| **loyalties_members_create_request_body** | [**LoyaltiesMembersCreateRequestBody**](LoyaltiesMembersCreateRequestBody.md) | Provide details to whom the loyalty card should be assigned.     You can choose to either specify the exact loyalty card code that you want to publish from existin (non-assigned) codes, or choose not to specify a voucher code. If you choose not to specify a code in the request paylaod, then the system will choose the next available voucher code available to be assigned to a customer.   You can also include metadata in the request payload. This metadata will be assigned to the publication object, but will not be returned in the response to this endpoint. To see of publications (assignments of particular codes to customers) and publication metadata, use the List Publications endpoint. | [optional] |

### Return type

[**LoyaltiesMembersCreateResponseBody**](LoyaltiesMembersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_member_pending_points

> cancel_member_pending_points(member_id, pending_points_id)

Cancel Member Pending Points

>🚧 Beta endpoint The endpoint is behind a feature flag as it is still in development. Contact [Voucherify support](https://www.voucherify.io/contact-support) to unlock the feature for your organization. All current parameters and fields are listed and described. Cancel manually the pending points for the loyalty card. The pending points are determined by the pending point ID. Once canceled, the pending point entry with that ID is not listed by the endpoints: List member (with campaign ID, without campaign ID), List campaign pending points. This **POST** method does not require a request body and it returns an empty, 204, response.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card code assigned to a particular customer.
pending_points_id = 'pending_points_id_example' # String | Unique pending point identifier, assigned by Voucherify.

begin
  # Cancel Member Pending Points
  api_instance.cancel_member_pending_points(member_id, pending_points_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->cancel_member_pending_points: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card code assigned to a particular customer. |  |
| **pending_points_id** | **String** | Unique pending point identifier, assigned by Voucherify. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_earning_rule

> <Array<LoyaltiesEarningRulesCreateResponseBody>> create_earning_rule(campaign_id, opts)

Create Earning Rule

Create earning rules for a loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  loyalties_earning_rules_create_request_body_item: [VoucherifySdk::LoyaltiesEarningRulesCreateRequestBodyItem.new] # Array<LoyaltiesEarningRulesCreateRequestBodyItem> | Customize the request body based on the type of earning rules you would like to create. The request body is an array of objects. The required minimum properties to include in the payload for each object are event and loyalty. Additionally, if you choose to add a validity_timeframe, you must include a start_date. Furthermore, an earning rule event type:   - customer.segment.entered requires a segment object - a custom event requires a custom_event object - a customer.loyalty.tier.joined, customer.loyalty.tier.left, customer.loyalty.tier.upgraded, customer.loyalty.tier.downgraded, customer.loyalty.tier.prolonged requires a loyalty_tier object
}

begin
  # Create Earning Rule
  result = api_instance.create_earning_rule(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **loyalties_earning_rules_create_request_body_item** | [**Array&lt;LoyaltiesEarningRulesCreateRequestBodyItem&gt;**](LoyaltiesEarningRulesCreateRequestBodyItem.md) | Customize the request body based on the type of earning rules you would like to create. The request body is an array of objects. The required minimum properties to include in the payload for each object are event and loyalty. Additionally, if you choose to add a validity_timeframe, you must include a start_date. Furthermore, an earning rule event type:   - customer.segment.entered requires a segment object - a custom event requires a custom_event object - a customer.loyalty.tier.joined, customer.loyalty.tier.left, customer.loyalty.tier.upgraded, customer.loyalty.tier.downgraded, customer.loyalty.tier.prolonged requires a loyalty_tier object | [optional] |

### Return type

[**Array&lt;LoyaltiesEarningRulesCreateResponseBody&gt;**](LoyaltiesEarningRulesCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_in_bulk_loyalty_tiers

> <Array<LoyaltyTier>> create_in_bulk_loyalty_tiers(campaign_id, opts)

Create loyalty tiers

Creates loyalty tiers for desired campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique loyalty campaign ID or name.
opts = {
  loyalties_tiers_create_in_bulk_request_body_item: [VoucherifySdk::LoyaltiesTiersCreateInBulkRequestBodyItem.new] # Array<LoyaltiesTiersCreateInBulkRequestBodyItem> | Provide tier definitions you want to add to existing loyalty campaign.
}

begin
  # Create loyalty tiers
  result = api_instance.create_in_bulk_loyalty_tiers(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_in_bulk_loyalty_tiers: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique loyalty campaign ID or name. |  |
| **loyalties_tiers_create_in_bulk_request_body_item** | [**Array&lt;LoyaltiesTiersCreateInBulkRequestBodyItem&gt;**](LoyaltiesTiersCreateInBulkRequestBodyItem.md) | Provide tier definitions you want to add to existing loyalty campaign. | [optional] |

### Return type

[**Array&lt;LoyaltyTier&gt;**](LoyaltyTier.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_loyalty_program

> <LoyaltiesCreateCampaignResponseBody> create_loyalty_program(opts)

Create Loyalty Campaign

Creates a batch of loyalty cards aggregated in a single loyalty campaign. It also allows you to define a custom codes pattern.    📘 Global uniqueness  All codes are unique across the whole project. Voucherify wont allow to generate the same codes in any of your campaigns.  🚧 Asyncronous action!  This is an asynchronous action, you cant read or modify a newly created campaign until the code generation is completed. See creation_status field in the loyalty campaign object description.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
opts = {
  loyalties_create_campaign_request_body: VoucherifySdk::LoyaltiesCreateCampaignRequestBody.new # LoyaltiesCreateCampaignRequestBody | Specify the loyalty campaign details.
}

begin
  # Create Loyalty Campaign
  result = api_instance.create_loyalty_program(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_loyalty_program: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **loyalties_create_campaign_request_body** | [**LoyaltiesCreateCampaignRequestBody**](LoyaltiesCreateCampaignRequestBody.md) | Specify the loyalty campaign details. | [optional] |

### Return type

[**LoyaltiesCreateCampaignResponseBody**](LoyaltiesCreateCampaignResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_points_expiration_export

> <LoyaltiesPointsExpirationExportCreateResponseBody> create_points_expiration_export(campaign_id, opts)

Export Loyalty Campaign Point Expiration

Schedule the generation of a points expiration CSV file for a particular campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name.
opts = {
  loyalties_points_expiration_export_create_request_body: VoucherifySdk::LoyaltiesPointsExpirationExportCreateRequestBody.new # LoyaltiesPointsExpirationExportCreateRequestBody | Specify the data filters, types of data to return and order in which the results should be returned.
}

begin
  # Export Loyalty Campaign Point Expiration
  result = api_instance.create_points_expiration_export(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_points_expiration_export: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **loyalties_points_expiration_export_create_request_body** | [**LoyaltiesPointsExpirationExportCreateRequestBody**](LoyaltiesPointsExpirationExportCreateRequestBody.md) | Specify the data filters, types of data to return and order in which the results should be returned. | [optional] |

### Return type

[**LoyaltiesPointsExpirationExportCreateResponseBody**](LoyaltiesPointsExpirationExportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_reward_assignment1

> <LoyaltiesRewardsCreateAssignmentResponseBody> create_reward_assignment1(campaign_id, opts)

Create Reward Assignment

Add rewards to a loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  loyalties_rewards_create_assignment_item_request_body: [VoucherifySdk::LoyaltiesRewardsCreateAssignmentItemRequestBody.new] # Array<LoyaltiesRewardsCreateAssignmentItemRequestBody> | Define the cost of the rewards in loyalty points.
}

begin
  # Create Reward Assignment
  result = api_instance.create_reward_assignment1(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_reward_assignment1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **loyalties_rewards_create_assignment_item_request_body** | [**Array&lt;LoyaltiesRewardsCreateAssignmentItemRequestBody&gt;**](LoyaltiesRewardsCreateAssignmentItemRequestBody.md) | Define the cost of the rewards in loyalty points. | [optional] |

### Return type

[**LoyaltiesRewardsCreateAssignmentResponseBody**](LoyaltiesRewardsCreateAssignmentResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_earning_rule

> delete_earning_rule(campaign_id, earning_rule_id)

Delete Earning Rule

This method deletes an earning rule for a specific loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
earning_rule_id = 'earning_rule_id_example' # String | A unique earning rule ID.

begin
  # Delete Earning Rule
  api_instance.delete_earning_rule(campaign_id, earning_rule_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **earning_rule_id** | **String** | A unique earning rule ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_loyalty_program

> <LoyaltiesDeleteResponseBody> delete_loyalty_program(campaign_id, opts)

Delete Loyalty Campaign

Deletes a loyalty campaign and all related loyalty cards. This action cannot be undone. Also, it immediately removes any redemptions on loyalty cards. If the force parameter is set to false or not set at all, the loyalty campaign and all related loyalty cards will be moved to the bin.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  force: true # Boolean | If this flag is set to true, the campaign and related vouchers will be removed permanently. If it is set to false or not set at all, the loyalty campaign and all related loyalty cards will be moved to the bin. Going forward, the user will be able to create the next campaign with the same name.
}

begin
  # Delete Loyalty Campaign
  result = api_instance.delete_loyalty_program(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_loyalty_program: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **force** | **Boolean** | If this flag is set to true, the campaign and related vouchers will be removed permanently. If it is set to false or not set at all, the loyalty campaign and all related loyalty cards will be moved to the bin. Going forward, the user will be able to create the next campaign with the same name. | [optional] |

### Return type

[**LoyaltiesDeleteResponseBody**](LoyaltiesDeleteResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_reward_assignment1

> delete_reward_assignment1(campaign_id, assignment_id)

Delete Reward Assignment

This method deletes a reward assignment for a particular loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Delete Reward Assignment
  api_instance.delete_reward_assignment1(campaign_id, assignment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_reward_assignment1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disable_earning_rule

> <LoyaltiesEarningRulesDisableResponseBody> disable_earning_rule(campaign_id, earning_rule_id)

Disable Earning Rule

Disable an earning rule.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name.
earning_rule_id = 'earning_rule_id_example' # String | Unique identifier of an earning rule, assigned by Voucherify.

begin
  # Disable Earning Rule
  result = api_instance.disable_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->disable_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **earning_rule_id** | **String** | Unique identifier of an earning rule, assigned by Voucherify. |  |

### Return type

[**LoyaltiesEarningRulesDisableResponseBody**](LoyaltiesEarningRulesDisableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_earning_rule

> <LoyaltiesEarningRulesEnableResponseBody> enable_earning_rule(campaign_id, earning_rule_id)

Enable Earning Rule

Enable an earning rule.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name.
earning_rule_id = 'earning_rule_id_example' # String | Unique identifier of an earning rule, assigned by Voucherify.

begin
  # Enable Earning Rule
  result = api_instance.enable_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->enable_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **earning_rule_id** | **String** | Unique identifier of an earning rule, assigned by Voucherify. |  |

### Return type

[**LoyaltiesEarningRulesEnableResponseBody**](LoyaltiesEarningRulesEnableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_loyalty_card_transactions

> <LoyaltiesMembersTransactionsExportCreateResponseBody> export_loyalty_card_transactions(member_id, opts)

Export Loyalty Card Transactions

Export transactions that are associated with point movements on a loyalty card.   

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | A unique code identifying the loyalty card that you are looking to export transaction data for.
opts = {
  loyalties_members_transactions_export_create_request_body: VoucherifySdk::LoyaltiesMembersTransactionsExportCreateRequestBody.new # LoyaltiesMembersTransactionsExportCreateRequestBody | Specify the parameters and filters for the transaction export.
}

begin
  # Export Loyalty Card Transactions
  result = api_instance.export_loyalty_card_transactions(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->export_loyalty_card_transactions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to export transaction data for. |  |
| **loyalties_members_transactions_export_create_request_body** | [**LoyaltiesMembersTransactionsExportCreateRequestBody**](LoyaltiesMembersTransactionsExportCreateRequestBody.md) | Specify the parameters and filters for the transaction export. | [optional] |

### Return type

[**LoyaltiesMembersTransactionsExportCreateResponseBody**](LoyaltiesMembersTransactionsExportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## export_loyalty_card_transactions1

> <LoyaltiesMembersTransactionsExportCreateResponseBody> export_loyalty_card_transactions1(campaign_id, member_id, opts)

Export Loyalty Card Transactions

Export transactions that are associated with point movements on a loyalty card.   

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | A unique identifier of the loyalty campaign containing the voucher whose transactions you would like to export.
member_id = 'member_id_example' # String | A unique code identifying the loyalty card that you are looking to export transaction data for.
opts = {
  loyalties_members_transactions_export_create_request_body: VoucherifySdk::LoyaltiesMembersTransactionsExportCreateRequestBody.new # LoyaltiesMembersTransactionsExportCreateRequestBody | Specify the parameters and filters for the transaction export.
}

begin
  # Export Loyalty Card Transactions
  result = api_instance.export_loyalty_card_transactions1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->export_loyalty_card_transactions1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | A unique identifier of the loyalty campaign containing the voucher whose transactions you would like to export. |  |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to export transaction data for. |  |
| **loyalties_members_transactions_export_create_request_body** | [**LoyaltiesMembersTransactionsExportCreateRequestBody**](LoyaltiesMembersTransactionsExportCreateRequestBody.md) | Specify the parameters and filters for the transaction export. | [optional] |

### Return type

[**LoyaltiesMembersTransactionsExportCreateResponseBody**](LoyaltiesMembersTransactionsExportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_earning_rule

> <LoyaltiesEarningRulesGetResponseBody> get_earning_rule(campaign_id, earning_rule_id)

Get Earning Rule

Retrieves an earning rule assigned to a campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
earning_rule_id = 'earning_rule_id_example' # String | A unique earning rule ID.

begin
  # Get Earning Rule
  result = api_instance.get_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **earning_rule_id** | **String** | A unique earning rule ID. |  |

### Return type

[**LoyaltiesEarningRulesGetResponseBody**](LoyaltiesEarningRulesGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_program

> <LoyaltiesGetCampaignResponseBody> get_loyalty_program(campaign_id)

Get Loyalty Campaign

Retrieve a specific loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 

begin
  # Get Loyalty Campaign
  result = api_instance.get_loyalty_program(campaign_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_loyalty_program: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |

### Return type

[**LoyaltiesGetCampaignResponseBody**](LoyaltiesGetCampaignResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loyalty_tier

> <LoyaltiesTiersGetResponseBody> get_loyalty_tier(campaign_id, loyalty_tier_id)

Get Loyalty Tier

Retrieve a loyalty tier from a loyalty campaign by the loyalty tier ID.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique loyalty campaign ID or name.
loyalty_tier_id = 'loyalty_tier_id_example' # String | Unique loyalty tier ID.

begin
  # Get Loyalty Tier
  result = api_instance.get_loyalty_tier(campaign_id, loyalty_tier_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_loyalty_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique loyalty campaign ID or name. |  |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID. |  |

### Return type

[**LoyaltiesTiersGetResponseBody**](LoyaltiesTiersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_member

> <LoyaltiesMembersGetResponseBody> get_member(member_id)

Get Member

Retrieve loyalty card with the given member ID (i.e. voucher code).      📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to allow you to retrieve loyalty card details without having to provide the campaignId as a path parameter.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card code assigned to a particular customer.

begin
  # Get Member
  result = api_instance.get_member(member_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_member: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card code assigned to a particular customer. |  |

### Return type

[**LoyaltiesMembersGetResponseBody**](LoyaltiesMembersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_member1

> <LoyaltiesMembersGetResponseBody> get_member1(campaign_id, member_id)

Get Member

Retrieves the loyalty card with the given member ID (i.e. voucher code).

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
member_id = 'member_id_example' # String | Unique code that identifies the loyalty card.

begin
  # Get Member
  result = api_instance.get_member1(campaign_id, member_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_member1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **member_id** | **String** | Unique code that identifies the loyalty card. |  |

### Return type

[**LoyaltiesMembersGetResponseBody**](LoyaltiesMembersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reward_assignment1

> <LoyaltiesRewardAssignmentsGetResponseBody> get_reward_assignment1(campaign_id, assignment_id)

Get Reward Assignment

Retrieve specific reward assignment.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
assignment_id = 'assignment_id_example' # String | Unique reward assignment ID.

begin
  # Get Reward Assignment
  result = api_instance.get_reward_assignment1(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **assignment_id** | **String** | Unique reward assignment ID. |  |

### Return type

[**LoyaltiesRewardAssignmentsGetResponseBody**](LoyaltiesRewardAssignmentsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reward_assignment2

> <LoyaltiesRewardsGetResponseBody> get_reward_assignment2(campaign_id, assignment_id)

Get Reward Assignment

Retrieve specific reward assignment.  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. 

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Get Reward Assignment
  result = api_instance.get_reward_assignment2(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment2: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |

### Return type

[**LoyaltiesRewardsGetResponseBody**](LoyaltiesRewardsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reward_details

> <LoyaltiesRewardAssignmentsRewardGetResponseBody> get_reward_details(campaign_id, assignment_id)

Get Reward Details

Get reward details in the context of a loyalty campaign and reward assignment ID.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
assignment_id = 'assignment_id_example' # String | Unique reward assignment ID.

begin
  # Get Reward Details
  result = api_instance.get_reward_details(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_details: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **assignment_id** | **String** | Unique reward assignment ID. |  |

### Return type

[**LoyaltiesRewardAssignmentsRewardGetResponseBody**](LoyaltiesRewardAssignmentsRewardGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_pending_points

> <LoyaltiesPendingPointsListResponseBody> list_campaign_pending_points(campaign_id, opts)

List Campaign Pending Points

>🚧 Beta endpoint The endpoint is behind a feature flag as it is still in development. Contact [Voucherify support](https://www.voucherify.io/contact-support) to unlock the feature for your organization. All current parameters and fields are listed and described. Lists all pending points that are currently assigned to all loyalty cards in a campaign. Once the points are added to the card, the entry is no longer returned.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
opts = {
  limit: 56, # Integer | Limit the number of the pending point entries that the API returns in the response.
  order: VoucherifySdk::ParameterOrderListPendingPoints::ID, # ParameterOrderListPendingPoints | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the results starting after a result with the given ID.
}

begin
  # List Campaign Pending Points
  result = api_instance.list_campaign_pending_points(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_campaign_pending_points: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **limit** | **Integer** | Limit the number of the pending point entries that the API returns in the response. | [optional] |
| **order** | [**ParameterOrderListPendingPoints**](.md) | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the results starting after a result with the given ID. | [optional] |

### Return type

[**LoyaltiesPendingPointsListResponseBody**](LoyaltiesPendingPointsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_earning_rules

> <LoyaltiesEarningRulesListResponseBody> list_earning_rules(campaign_id, opts)

List Earning Rules

Returns a list of all earning rules within a given campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListEarningRules::CREATED_AT # ParameterOrderListEarningRules | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Earning Rules
  result = api_instance.list_earning_rules(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_earning_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListEarningRules**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**LoyaltiesEarningRulesListResponseBody**](LoyaltiesEarningRulesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_card_transactions

> <LoyaltiesMembersTransactionsListResponseBody> list_loyalty_card_transactions(member_id, opts)

List Loyalty Card Transactions

Retrieve transaction data related to point movements for a specific loyalty card.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | A unique code identifying the loyalty card that you are looking to retrieve transaction data for.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListTransactions::ID, # ParameterOrderListTransactions | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the transactions starting after a transaction with the given ID.
}

begin
  # List Loyalty Card Transactions
  result = api_instance.list_loyalty_card_transactions(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to retrieve transaction data for. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListTransactions**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the transactions starting after a transaction with the given ID. | [optional] |

### Return type

[**LoyaltiesMembersTransactionsListResponseBody**](LoyaltiesMembersTransactionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_card_transactions1

> <LoyaltiesMembersTransactionsListResponseBody> list_loyalty_card_transactions1(campaign_id, member_id, opts)

List Loyalty Card Transactions

Retrieve transaction data related to point movements for a specific loyalty card.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | A unique identifier of the loyalty campaign containing the voucher whose transactions you would like to return.
member_id = 'member_id_example' # String | A unique code identifying the loyalty card that you are looking to retrieve transaction data for.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListTransactions::ID, # ParameterOrderListTransactions | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the transactions starting after a transaction with the given ID.
}

begin
  # List Loyalty Card Transactions
  result = api_instance.list_loyalty_card_transactions1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | A unique identifier of the loyalty campaign containing the voucher whose transactions you would like to return. |  |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to retrieve transaction data for. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListTransactions**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the transactions starting after a transaction with the given ID. | [optional] |

### Return type

[**LoyaltiesMembersTransactionsListResponseBody**](LoyaltiesMembersTransactionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_programs

> <LoyaltiesListCampaignsResponseBody> list_loyalty_programs(opts)

List Loyalty Campaigns

Returns a list of your loyalty campaigns.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListCampaigns::CREATED_AT # ParameterOrderListCampaigns | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Loyalty Campaigns
  result = api_instance.list_loyalty_programs(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_programs: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListCampaigns**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**LoyaltiesListCampaignsResponseBody**](LoyaltiesListCampaignsResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_tier_earning_rules

> <LoyaltiesTiersEarningRulesListResponseBody> list_loyalty_tier_earning_rules(campaign_id, loyalty_tier_id, opts)

List Loyalty Tier Earning Rules

Retrieve available earning rules for a given tier and the calculation method for earning points.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name.
loyalty_tier_id = 'loyalty_tier_id_example' # String | Unique loyalty tier ID.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56 # Integer | Which page of results to return. The lowest value is 1.
}

begin
  # List Loyalty Tier Earning Rules
  result = api_instance.list_loyalty_tier_earning_rules(campaign_id, loyalty_tier_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tier_earning_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |

### Return type

[**LoyaltiesTiersEarningRulesListResponseBody**](LoyaltiesTiersEarningRulesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_tier_rewards

> <LoyaltiesTiersRewardsListResponseBody> list_loyalty_tier_rewards(campaign_id, loyalty_tier_id)

List Loyalty Tier Rewards

Get available rewards for a given tier.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name.
loyalty_tier_id = 'loyalty_tier_id_example' # String | Unique loyalty tier ID.

begin
  # List Loyalty Tier Rewards
  result = api_instance.list_loyalty_tier_rewards(campaign_id, loyalty_tier_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tier_rewards: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID. |  |

### Return type

[**LoyaltiesTiersRewardsListResponseBody**](LoyaltiesTiersRewardsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_loyalty_tiers

> <LoyaltiesTiersListResponseBody> list_loyalty_tiers(campaign_id, opts)

List Loyalty Tiers

Retrieve a list of loyalty tiers which were added to the loyalty program.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique loyalty campaign ID or name.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListLoyaltyTiers::CREATED_AT # ParameterOrderListLoyaltyTiers | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Loyalty Tiers
  result = api_instance.list_loyalty_tiers(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tiers: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique loyalty campaign ID or name. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListLoyaltyTiers**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**LoyaltiesTiersListResponseBody**](LoyaltiesTiersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_activity

> <LoyaltiesMemberActivityListResponseBody> list_member_activity(member_id, opts)

List Member Activity

  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to allow you to get member activities without having to provide the campaignId as a path parameter. Retrieves the list of activities for the given member ID related to a voucher and customer who is the holder of the voucher.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card assigned to a particular customer.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderCreatedAt::CREATED_AT, # ParameterOrderCreatedAt | Apply this filter to order the events according the date and time when it was created. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
}

begin
  # List Member Activity
  result = api_instance.list_member_activity(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_activity: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderCreatedAt**](.md) | Apply this filter to order the events according the date and time when it was created. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |

### Return type

[**LoyaltiesMemberActivityListResponseBody**](LoyaltiesMemberActivityListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_activity1

> <LoyaltiesMemberActivityListResponseBody> list_member_activity1(campaign_id, member_id, opts)

List Member Activity

Retrieves the list of activities for the given member ID related to a voucher and customer who is the holder of the voucher.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
member_id = 'member_id_example' # String | A code that identifies the loyalty card.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderCreatedAt::CREATED_AT, # ParameterOrderCreatedAt | Apply this filter to order the events according the date and time when it was created. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the events starting after an event with the given ID.
}

begin
  # List Member Activity
  result = api_instance.list_member_activity1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_activity1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **member_id** | **String** | A code that identifies the loyalty card. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderCreatedAt**](.md) | Apply this filter to order the events according the date and time when it was created. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the events starting after an event with the given ID. | [optional] |

### Return type

[**LoyaltiesMemberActivityListResponseBody**](LoyaltiesMemberActivityListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_loyalty_tier

> <LoyaltiesMembersTiersListResponseBody> list_member_loyalty_tier(member_id)

List Member's Loyalty Tiers

Retrieve member tiers using the loyalty card ID.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card assigned to a particular customer.

begin
  # List Member's Loyalty Tiers
  result = api_instance.list_member_loyalty_tier(member_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_loyalty_tier: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |

### Return type

[**LoyaltiesMembersTiersListResponseBody**](LoyaltiesMembersTiersListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_pending_points

> <LoyaltiesMembersPendingPointsListResponseBody> list_member_pending_points(member_id, opts)

List Member Pending Points

>🚧 Beta endpoint The endpoint is behind a feature flag as it is still in development. Contact [Voucherify support](https://www.voucherify.io/contact-support) to unlock the feature for your organization. All current parameters and fields are listed and described.  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to list member pending points without having to provide the campaignId as a path parameter. Lists all pending points that are currently assigned to the loyalty card. Once the points are added to the card, the entry is no longer returned.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card code assigned to a particular customer.
opts = {
  limit: 56, # Integer | Limit the number of the pending point entries that the API returns in the response.
  order: VoucherifySdk::ParameterOrderListPendingPoints::ID, # ParameterOrderListPendingPoints | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the results starting after a result with the given ID.
}

begin
  # List Member Pending Points
  result = api_instance.list_member_pending_points(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_pending_points: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card code assigned to a particular customer. |  |
| **limit** | **Integer** | Limit the number of the pending point entries that the API returns in the response. | [optional] |
| **order** | [**ParameterOrderListPendingPoints**](.md) | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the results starting after a result with the given ID. | [optional] |

### Return type

[**LoyaltiesMembersPendingPointsListResponseBody**](LoyaltiesMembersPendingPointsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_pending_points1

> <LoyaltiesMembersPendingPointsListResponseBody> list_member_pending_points1(campaign_id, member_id, opts)

List Member Pending Points

>🚧 Beta endpoint The endpoint is behind a feature flag as it is still in development. Contact [Voucherify support](https://www.voucherify.io/contact-support) to unlock the feature for your organization. All current parameters and fields are listed and described. Lists all pending points that are currently assigned to the loyalty card. Once the points are added to the card, the entry is no longer returned.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
member_id = 'member_id_example' # String | Unique loyalty card code assigned to a particular customer.
opts = {
  limit: 56, # Integer | Limit the number of the pending point entries that the API returns in the response.
  order: VoucherifySdk::ParameterOrderListPendingPoints::ID, # ParameterOrderListPendingPoints | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example' # String | A cursor for pagination. It retrieves the results starting after a result with the given ID.
}

begin
  # List Member Pending Points
  result = api_instance.list_member_pending_points1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_pending_points1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **member_id** | **String** | Unique loyalty card code assigned to a particular customer. |  |
| **limit** | **Integer** | Limit the number of the pending point entries that the API returns in the response. | [optional] |
| **order** | [**ParameterOrderListPendingPoints**](.md) | Orders the pending point entries according the pending point entry ID. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the results starting after a result with the given ID. | [optional] |

### Return type

[**LoyaltiesMembersPendingPointsListResponseBody**](LoyaltiesMembersPendingPointsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_rewards

> <LoyaltiesMembersRewardsListResponseBody> list_member_rewards(member_id, opts)

List Member Rewards

Retrieves the list of rewards that the given customer (identified by member_id, which is a loyalty card assigned to a particular customer) **can get in exchange for loyalty points**.   You can use the affordable_only parameter to limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card).   Please note that rewards that are disabled (i.e. set to Not Available in the Dashboard) for a given loyalty tier reward mapping will not be returned in this endpoint.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card assigned to a particular customer.
opts = {
  affordable_only: true # Boolean | Limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card). Set this flag to true to return rewards which the customer can actually afford.
}

begin
  # List Member Rewards
  result = api_instance.list_member_rewards(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_rewards: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |
| **affordable_only** | **Boolean** | Limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card). Set this flag to true to return rewards which the customer can actually afford. | [optional] |

### Return type

[**LoyaltiesMembersRewardsListResponseBody**](LoyaltiesMembersRewardsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_members

> <LoyaltiesListMembersResponseBody> list_members(campaign_id, opts)

List Members

Returns a list of your loyalty cards. The loyalty cards are sorted by creation date, with the most recent loyalty cards appearing first.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID of the loyalty program.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  customer: 'customer_example', # String | A tracking identifier of a customer who is the holder of the vouchers. It can be an id generated by Voucherify or the source_id. Remember to use the proper URL escape codes if the source_id contains special characters.
  created_at: VoucherifySdk::ParameterCreatedBeforeAfter.new, # ParameterCreatedBeforeAfter | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z
  updated_at: VoucherifySdk::ParameterUpdatedBeforeAfter.new, # ParameterUpdatedBeforeAfter | A filter on the list based on the object updated_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [updated_at][before] 2017-09-08T13:52:18.227Z
  order: VoucherifySdk::ParameterOrderVouchers::CREATED_AT, # ParameterOrderVouchers | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  code: 'code_example', # String | 
  ids: ['inner_example'] # Array<String> | 
}

begin
  # List Members
  result = api_instance.list_members(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_members: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID of the loyalty program. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **customer** | **String** | A tracking identifier of a customer who is the holder of the vouchers. It can be an id generated by Voucherify or the source_id. Remember to use the proper URL escape codes if the source_id contains special characters. | [optional] |
| **created_at** | [**ParameterCreatedBeforeAfter**](.md) | A filter on the list based on the object created_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [created_at][before] 2017-09-08T13:52:18.227Z | [optional] |
| **updated_at** | [**ParameterUpdatedBeforeAfter**](.md) | A filter on the list based on the object updated_at field. The value is a dictionary with the following options: before, after. A date value must be presented in ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). An example: [updated_at][before] 2017-09-08T13:52:18.227Z | [optional] |
| **order** | [**ParameterOrderVouchers**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **code** | **String** |  | [optional] |
| **ids** | [**Array&lt;String&gt;**](String.md) |  | [optional] |

### Return type

[**LoyaltiesListMembersResponseBody**](LoyaltiesListMembersResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_points_expiration

> <LoyaltiesMembersPointsExpirationListResponseBody> list_points_expiration(campaign_id, member_id, opts)

List Loyalty Card Point Expiration

Retrieve loyalty point expiration buckets for a given loyalty card. Expired point buckets are not returned in this endpoint. You can use the Exports API to retrieve a list of both ACTIVE and EXPIRED point buckets.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
member_id = 'member_id_example' # String | Loyalty card code.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56 # Integer | Which page of results to return. The lowest value is 1.
}

begin
  # List Loyalty Card Point Expiration
  result = api_instance.list_points_expiration(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_points_expiration: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **member_id** | **String** | Loyalty card code. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |

### Return type

[**LoyaltiesMembersPointsExpirationListResponseBody**](LoyaltiesMembersPointsExpirationListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reward_assignments1

> <LoyaltiesRewardAssignmentsListResponseBody> list_reward_assignments1(campaign_id, opts)

List Reward Assignments

Returns reward assignments from a given loyalty campaign.  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to be more contextual to the type of data returned in the response.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  assignment_id: 'assignment_id_example' # String | A unique reward assignment ID.
}

begin
  # List Reward Assignments
  result = api_instance.list_reward_assignments1(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_reward_assignments1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **assignment_id** | **String** | A unique reward assignment ID. | [optional] |

### Return type

[**LoyaltiesRewardAssignmentsListResponseBody**](LoyaltiesRewardAssignmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reward_assignments2

> <LoyaltiesRewardsListAssignmentsResponseBody> list_reward_assignments2(campaign_id, opts)

List Reward Assignments

Returns active rewards from a given loyalty campaign.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  assignment_id: 'assignment_id_example' # String | A unique reward assignment ID.
}

begin
  # List Reward Assignments
  result = api_instance.list_reward_assignments2(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_reward_assignments2: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **assignment_id** | **String** | A unique reward assignment ID. | [optional] |

### Return type

[**LoyaltiesRewardsListAssignmentsResponseBody**](LoyaltiesRewardsListAssignmentsResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redeem_reward

> <LoyaltiesMembersRedemptionRedeemResponseBody> redeem_reward(member_id, opts)

Redeem Reward

  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to allow you to redeem a reward without having to provide the campaignId as a path parameter.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card assigned to a particular customer.
opts = {
  loyalties_members_redemption_redeem_request_body: VoucherifySdk::LoyaltiesMembersRedemptionRedeemRequestBody.new # LoyaltiesMembersRedemptionRedeemRequestBody | Specify the reward to be redeemed. In case of a pay with points reward, specify the order and the number of points to be applied to the order. Please note that if you do not specify the amount of points, the application will default to applying the number of points to pay for the remainder of the order. If the limit of available points on the card is reached, then only the available points on the card will be applied to the order.
}

begin
  # Redeem Reward
  result = api_instance.redeem_reward(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->redeem_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |
| **loyalties_members_redemption_redeem_request_body** | [**LoyaltiesMembersRedemptionRedeemRequestBody**](LoyaltiesMembersRedemptionRedeemRequestBody.md) | Specify the reward to be redeemed. In case of a pay with points reward, specify the order and the number of points to be applied to the order. Please note that if you do not specify the amount of points, the application will default to applying the number of points to pay for the remainder of the order. If the limit of available points on the card is reached, then only the available points on the card will be applied to the order. | [optional] |

### Return type

[**LoyaltiesMembersRedemptionRedeemResponseBody**](LoyaltiesMembersRedemptionRedeemResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redeem_reward1

> <LoyaltiesMembersRedemptionRedeemResponseBody> redeem_reward1(campaign_id, member_id, opts)

Redeem Reward

Exchange points from a loyalty card for a specified reward. This API method returns an assigned award in the response. It means that if a requesting customer gets a coupon code with a discount for the next order, that discount code will be visible in response as part of the reward object definition.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
member_id = 'member_id_example' # String | A code that identifies the loyalty card.
opts = {
  loyalties_members_redemption_redeem_request_body: VoucherifySdk::LoyaltiesMembersRedemptionRedeemRequestBody.new # LoyaltiesMembersRedemptionRedeemRequestBody | Specify the reward to be redeemed. In case of a pay with points reward, specify the order and the number of points to be applied to the order. Please note that if you do not specify the amount of points, the application will default to applying the number of points to pay for the remainder of the order. If the limit of available points on the card is reached, then only the available points on the card will be applied to the order.
}

begin
  # Redeem Reward
  result = api_instance.redeem_reward1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->redeem_reward1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **member_id** | **String** | A code that identifies the loyalty card. |  |
| **loyalties_members_redemption_redeem_request_body** | [**LoyaltiesMembersRedemptionRedeemRequestBody**](LoyaltiesMembersRedemptionRedeemRequestBody.md) | Specify the reward to be redeemed. In case of a pay with points reward, specify the order and the number of points to be applied to the order. Please note that if you do not specify the amount of points, the application will default to applying the number of points to pay for the remainder of the order. If the limit of available points on the card is reached, then only the available points on the card will be applied to the order. | [optional] |

### Return type

[**LoyaltiesMembersRedemptionRedeemResponseBody**](LoyaltiesMembersRedemptionRedeemResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transfer_points

> <LoyaltiesMembersTransfersCreateResponseBody> transfer_points(campaign_id, member_id, opts)

Transfer Loyalty Points

Transfer points between different loyalty cards. You need to provide the campaign ID and the loyalty card ID you want the points to be transferred to as path parameters in the URL. In the request body, you provide the loyalty cards you want the points to be transferred from and the number of points to transfer from each card.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | A unique identifier of the loyalty campaign containing the voucher to which the loyalty points will be sent (destination).
member_id = 'member_id_example' # String | A unique code identifying the loyalty card to which the user wants to transfer loyalty points (destination).
opts = {
  loyalties_transfer_points: [VoucherifySdk::LoyaltiesTransferPoints.new] # Array<LoyaltiesTransferPoints> | Provide the loyalty cards you want the points to be transferred from and the number of points to transfer from each card.
}

begin
  # Transfer Loyalty Points
  result = api_instance.transfer_points(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->transfer_points: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | A unique identifier of the loyalty campaign containing the voucher to which the loyalty points will be sent (destination). |  |
| **member_id** | **String** | A unique code identifying the loyalty card to which the user wants to transfer loyalty points (destination). |  |
| **loyalties_transfer_points** | [**Array&lt;LoyaltiesTransferPoints&gt;**](LoyaltiesTransferPoints.md) | Provide the loyalty cards you want the points to be transferred from and the number of points to transfer from each card. | [optional] |

### Return type

[**LoyaltiesMembersTransfersCreateResponseBody**](LoyaltiesMembersTransfersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_earning_rule

> <LoyaltiesEarningRulesUpdateResponseBody> update_earning_rule(campaign_id, earning_rule_id, opts)

Update Earning Rule

Update an earning rule definition.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
earning_rule_id = 'earning_rule_id_example' # String | A unique earning rule ID.
opts = {
  loyalties_earning_rules_update_request_body: VoucherifySdk::LoyaltiesEarningRulesUpdateRequestBody.new # LoyaltiesEarningRulesUpdateRequestBody | Specify the parameters that you would like to update for the given earning rule.
}

begin
  # Update Earning Rule
  result = api_instance.update_earning_rule(campaign_id, earning_rule_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_earning_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **earning_rule_id** | **String** | A unique earning rule ID. |  |
| **loyalties_earning_rules_update_request_body** | [**LoyaltiesEarningRulesUpdateRequestBody**](LoyaltiesEarningRulesUpdateRequestBody.md) | Specify the parameters that you would like to update for the given earning rule. | [optional] |

### Return type

[**LoyaltiesEarningRulesUpdateResponseBody**](LoyaltiesEarningRulesUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_card_balance

> <LoyaltiesMembersBalanceUpdateResponseBody> update_loyalty_card_balance(member_id, opts)

Add or Remove Loyalty Card Balance

This method gives adds or removes balance to an existing loyalty card. The removal of points will consume the points that expire the soonest.   >🚧 Async Action    This is an async action. If you want to perform several add or remove loyalty card balance actions in a short time and their order matters, set up sufficient time-out between the calls.  📘 Alternative endpoint  This endpoint is an alternative to this endpoint. The URL was re-designed to allow you to add or remove loyalty card balance without having to provide the campaignId as a path parameter.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
member_id = 'member_id_example' # String | Unique loyalty card assigned to a particular customer.
opts = {
  loyalties_members_balance_update_request_body: VoucherifySdk::LoyaltiesMembersBalanceUpdateRequestBody.new # LoyaltiesMembersBalanceUpdateRequestBody | Specify the point adjustment along with the expiration mechanism.
}

begin
  # Add or Remove Loyalty Card Balance
  result = api_instance.update_loyalty_card_balance(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |
| **loyalties_members_balance_update_request_body** | [**LoyaltiesMembersBalanceUpdateRequestBody**](LoyaltiesMembersBalanceUpdateRequestBody.md) | Specify the point adjustment along with the expiration mechanism. | [optional] |

### Return type

[**LoyaltiesMembersBalanceUpdateResponseBody**](LoyaltiesMembersBalanceUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_card_balance1

> <LoyaltiesMembersBalanceUpdateResponseBody> update_loyalty_card_balance1(campaign_id, member_id, opts)

Add or Remove Loyalty Card Balance

This method adds or removes balance to an existing loyalty card. The removal of points will consume the points that expire the soonest.   >🚧 Async Action    This is an async action. If you want to perform several add or remove loyalty card balance actions in a short time and their order matters, set up sufficient time-out between the calls.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | Unique campaign ID.
member_id = 'member_id_example' # String | A code that identifies the loyalty card.
opts = {
  loyalties_members_balance_update_request_body: VoucherifySdk::LoyaltiesMembersBalanceUpdateRequestBody.new # LoyaltiesMembersBalanceUpdateRequestBody | Specify the point adjustment along with the expiration mechanism.
}

begin
  # Add or Remove Loyalty Card Balance
  result = api_instance.update_loyalty_card_balance1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID. |  |
| **member_id** | **String** | A code that identifies the loyalty card. |  |
| **loyalties_members_balance_update_request_body** | [**LoyaltiesMembersBalanceUpdateRequestBody**](LoyaltiesMembersBalanceUpdateRequestBody.md) | Specify the point adjustment along with the expiration mechanism. | [optional] |

### Return type

[**LoyaltiesMembersBalanceUpdateResponseBody**](LoyaltiesMembersBalanceUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_loyalty_program

> <LoyaltiesUpdateCampaignResponseBody> update_loyalty_program(campaign_id, opts)

Update Loyalty Campaign

Updates a loyalty program.  Fields other than those specified in the allowed request body payload wont be modified (even if provided they are silently skipped). Any parameters not provided will be left unchanged.  This method will update the loyalty cards which have not been published or redeemed yet.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
opts = {
  loyalties_update_campaign_request_body: VoucherifySdk::LoyaltiesUpdateCampaignRequestBody.new # LoyaltiesUpdateCampaignRequestBody | Specify the new values for the parameters that you would like to update for the given loyalty campaign.
}

begin
  # Update Loyalty Campaign
  result = api_instance.update_loyalty_program(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_program: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **loyalties_update_campaign_request_body** | [**LoyaltiesUpdateCampaignRequestBody**](LoyaltiesUpdateCampaignRequestBody.md) | Specify the new values for the parameters that you would like to update for the given loyalty campaign. | [optional] |

### Return type

[**LoyaltiesUpdateCampaignResponseBody**](LoyaltiesUpdateCampaignResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reward_assignment1

> <LoyaltiesRewardsUpdateAssignmentResponseBody> update_reward_assignment1(campaign_id, assignment_id, opts)

Update Reward Assignment

Updates rewards parameters, i.e. the points cost for the specific reward.

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

api_instance = VoucherifySdk::LoyaltiesApi.new
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign. 
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.
opts = {
  loyalties_rewards_update_assignment_request_body: VoucherifySdk::LoyaltiesRewardsUpdateAssignmentRequestBody.new # LoyaltiesRewardsUpdateAssignmentRequestBody | Update the points cost for the reward assignment.
}

begin
  # Update Reward Assignment
  result = api_instance.update_reward_assignment1(campaign_id, assignment_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_reward_assignment1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the name of the campaign as the path parameter value, e.g., Loyalty%20Campaign.  |  |
| **assignment_id** | **String** | A unique reward assignment ID. |  |
| **loyalties_rewards_update_assignment_request_body** | [**LoyaltiesRewardsUpdateAssignmentRequestBody**](LoyaltiesRewardsUpdateAssignmentRequestBody.md) | Update the points cost for the reward assignment. | [optional] |

### Return type

[**LoyaltiesRewardsUpdateAssignmentResponseBody**](LoyaltiesRewardsUpdateAssignmentResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

