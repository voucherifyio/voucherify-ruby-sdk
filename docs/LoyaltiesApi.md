# VoucherifySdk::LoyaltiesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_in_bulk_loyalty_tiers**](LoyaltiesApi.md#create_in_bulk_loyalty_tiers) | **POST** /v1/loyalties/{campaignId}/tiers | Create loyalty tiers |
| [**delete_loyalty_program**](LoyaltiesApi.md#delete_loyalty_program) | **DELETE** /v1/loyalties/{campaignId} | Delete Loyalty Campaign |
| [**delete_reward_assignment1**](LoyaltiesApi.md#delete_reward_assignment1) | **DELETE** /v1/loyalties/{campaignId}/rewards/{assignmentId} | Delete Reward Assignment |
| [**disable_earning_rule**](LoyaltiesApi.md#disable_earning_rule) | **POST** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/disable | Disable Earning Rule |
| [**enable_earning_rule**](LoyaltiesApi.md#enable_earning_rule) | **POST** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/enable | Enable Earning Rule |
| [**export_loyalty_card_transactions**](LoyaltiesApi.md#export_loyalty_card_transactions) | **POST** /v1/loyalties/members/{memberId}/transactions/export | Export Loyalty Card Transactions |
| [**export_loyalty_card_transactions1**](LoyaltiesApi.md#export_loyalty_card_transactions1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/transactions/export | Export Loyalty Card Transactions |
| [**get_earning_rule**](LoyaltiesApi.md#get_earning_rule) | **GET** /v1/loyalties/{campaignId}/earning-rules/{earningRuleId} | Get Earning Rule |
| [**get_loyalty_tier**](LoyaltiesApi.md#get_loyalty_tier) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId} | Get Loyalty Tier |
| [**get_reward_assignment1**](LoyaltiesApi.md#get_reward_assignment1) | **GET** /v1/loyalties/{campaignId}/reward-assignments/{assignmentId} | Get Reward Assignment |
| [**get_reward_assignment2**](LoyaltiesApi.md#get_reward_assignment2) | **GET** /v1/loyalties/{campaignId}/rewards/{assignmentId} | Get Reward Assignment |
| [**get_reward_details**](LoyaltiesApi.md#get_reward_details) | **GET** /v1/loyalties/{campaignId}/reward-assignments/{assignmentId}/reward | Get Reward Details |
| [**list_loyalty_card_transactions**](LoyaltiesApi.md#list_loyalty_card_transactions) | **GET** /v1/loyalties/members/{memberId}/transactions | List Loyalty Card Transactions |
| [**list_loyalty_card_transactions1**](LoyaltiesApi.md#list_loyalty_card_transactions1) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/transactions | List Loyalty Card Transactions |
| [**list_loyalty_tier_earning_rules**](LoyaltiesApi.md#list_loyalty_tier_earning_rules) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/earning-rules | List Loyalty Tier Earning Rules |
| [**list_loyalty_tier_rewards**](LoyaltiesApi.md#list_loyalty_tier_rewards) | **GET** /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/rewards | List Loyalty Tier Rewards |
| [**list_loyalty_tiers**](LoyaltiesApi.md#list_loyalty_tiers) | **GET** /v1/loyalties/{campaignId}/tiers | List Loyalty Tiers |
| [**list_member_loyalty_tier**](LoyaltiesApi.md#list_member_loyalty_tier) | **GET** /v1/loyalties/members/{memberId}/tiers | List Member&#39;s Loyalty Tiers |
| [**list_member_rewards**](LoyaltiesApi.md#list_member_rewards) | **GET** /v1/loyalties/members/{memberId}/rewards | List Member Rewards |
| [**list_points_expiration**](LoyaltiesApi.md#list_points_expiration) | **GET** /v1/loyalties/{campaignId}/members/{memberId}/points-expiration | Get Points Expiration |
| [**redeem_reward**](LoyaltiesApi.md#redeem_reward) | **POST** /v1/loyalties/members/{memberId}/redemption | Redeem Reward |
| [**redeem_reward1**](LoyaltiesApi.md#redeem_reward1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/redemption | Redeem Reward |
| [**transfer_points**](LoyaltiesApi.md#transfer_points) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/transfers | Transfer Loyalty Points |
| [**update_loyalty_card_balance**](LoyaltiesApi.md#update_loyalty_card_balance) | **POST** /v1/loyalties/members/{memberId}/balance | Add or Remove Loyalty Card Balance |
| [**update_loyalty_card_balance1**](LoyaltiesApi.md#update_loyalty_card_balance1) | **POST** /v1/loyalties/{campaignId}/members/{memberId}/balance | Add or Remove Loyalty Card Balance |


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
  loyalties_tiers_create_in_bulk_request_body_item: [VoucherifySdk::LoyaltiesTiersCreateInBulkRequestBodyItem.new({name: 'name_example', points: VoucherifySdk::LoyaltyTierBasePoints.new})] # Array<LoyaltiesTiersCreateInBulkRequestBodyItem> | Provide tier definitions you want to add to existing loyalty campaign.
}

begin
  # Create loyalty tiers
  result = api_instance.create_in_bulk_loyalty_tiers(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_in_bulk_loyalty_tiers: #{e}"
end
```

#### Using the create_in_bulk_loyalty_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LoyaltyTier>>, Integer, Hash)> create_in_bulk_loyalty_tiers_with_http_info(campaign_id, opts)

```ruby
begin
  # Create loyalty tiers
  data, status_code, headers = api_instance.create_in_bulk_loyalty_tiers_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LoyaltyTier>>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->create_in_bulk_loyalty_tiers_with_http_info: #{e}"
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


## delete_loyalty_program

> <LoyaltiesDeleteResponseBody> delete_loyalty_program(campaign_id, opts)

Delete Loyalty Campaign

Deletes a loyalty campaign and all related loyalty cards. This action cannot be undone. Also, it immediately removes any redemptions on loyalty cards.  If the `force` parameter is set to `false` or not set at all, the loyalty campaign and all related loyalty cards will be moved to [the bin](ref:list-bin-entries).

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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
opts = {
  force: true # Boolean | If this flag is set to `true`, the campaign and related vouchers will be removed permanently. If it is set to `false` or not set at all, the loyalty campaign and all related loyalty cards will be moved to the bin. Going forward, the user will be able to create the next campaign with the same name.
}

begin
  # Delete Loyalty Campaign
  result = api_instance.delete_loyalty_program(campaign_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_loyalty_program: #{e}"
end
```

#### Using the delete_loyalty_program_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesDeleteResponseBody>, Integer, Hash)> delete_loyalty_program_with_http_info(campaign_id, opts)

```ruby
begin
  # Delete Loyalty Campaign
  data, status_code, headers = api_instance.delete_loyalty_program_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesDeleteResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_loyalty_program_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
| **force** | **Boolean** | If this flag is set to &#x60;true&#x60;, the campaign and related vouchers will be removed permanently. If it is set to &#x60;false&#x60; or not set at all, the loyalty campaign and all related loyalty cards will be moved to the bin. Going forward, the user will be able to create the next campaign with the same name. | [optional] |

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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Delete Reward Assignment
  api_instance.delete_reward_assignment1(campaign_id, assignment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_reward_assignment1: #{e}"
end
```

#### Using the delete_reward_assignment1_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reward_assignment1_with_http_info(campaign_id, assignment_id)

```ruby
begin
  # Delete Reward Assignment
  data, status_code, headers = api_instance.delete_reward_assignment1_with_http_info(campaign_id, assignment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->delete_reward_assignment1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
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
earning_rule_id = 'earning_rule_id_example' # String | Unique earning rule ID.

begin
  # Disable Earning Rule
  result = api_instance.disable_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->disable_earning_rule: #{e}"
end
```

#### Using the disable_earning_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesEarningRulesDisableResponseBody>, Integer, Hash)> disable_earning_rule_with_http_info(campaign_id, earning_rule_id)

```ruby
begin
  # Disable Earning Rule
  data, status_code, headers = api_instance.disable_earning_rule_with_http_info(campaign_id, earning_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesEarningRulesDisableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->disable_earning_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **earning_rule_id** | **String** | Unique earning rule ID. |  |

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
earning_rule_id = 'earning_rule_id_example' # String | Unique earning rule ID.

begin
  # Enable Earning Rule
  result = api_instance.enable_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->enable_earning_rule: #{e}"
end
```

#### Using the enable_earning_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesEarningRulesEnableResponseBody>, Integer, Hash)> enable_earning_rule_with_http_info(campaign_id, earning_rule_id)

```ruby
begin
  # Enable Earning Rule
  data, status_code, headers = api_instance.enable_earning_rule_with_http_info(campaign_id, earning_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesEarningRulesEnableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->enable_earning_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **earning_rule_id** | **String** | Unique earning rule ID. |  |

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

Export transactions that are associated with point movements on a loyalty card.  | **Field** | **Definition** | **Example Export** | |:---|:---|:---| | id | Unique transaction ID assigned by Voucherify. | vtx_0cb7811f1c07765800 | | type | Transaction type. | - `POINTS_EXPIRATION` <br> - `POINTS_ADDITION` <br> - `POINTS_REMOVAL` <br> - `POINTS_TRANSFER_OUT` <br> - `POINTS_ACCRUAL` <br> - `POINTS_REFUND` <br> - `POINTS_REDEMPTION` | | source_id | Custom source ID of the transaction if one was included originally. | source_id_custom | | reason | Contains the reason for the transaction if one was included originally. |  | | balance | The loyalty card balance after the transaction. |  | | amount | The amount of loyalty points being allocated during the transaction. This value can either be negative or positive depending on the nature of the transaction. |  | | created_at | Timestamp in ISO 8601 format representing the date and time when the transaction was created. | 2022-03-09T09:16:32.521Z  | | voucher_id | Unique Voucher ID. | v_dky7ksKfPX50Wb2Bxvcoeb1xT20b6tcp | | campaign_id | Parent campaign ID. | camp_FNYR4jhqZBM9xTptxDGgeNBV | | source|  Channel through which the transaction was initiated. | - `API` <br> - `voucherify-web-ui` <br> - `Automation` | | details | More detailed information stored in the form of a JSON. | Provides more details related to the transaction in the form of an object. | | related_transaction_id | Unique transaction ID related to a receiver/donor card in the case of a points transfer from/to another card. | vtx_0c9afe802593b34b80 |

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

#### Using the export_loyalty_card_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTransactionsExportCreateResponseBody>, Integer, Hash)> export_loyalty_card_transactions_with_http_info(member_id, opts)

```ruby
begin
  # Export Loyalty Card Transactions
  data, status_code, headers = api_instance.export_loyalty_card_transactions_with_http_info(member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTransactionsExportCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->export_loyalty_card_transactions_with_http_info: #{e}"
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

Export transactions that are associated with point movements on a loyalty card.  | **Field** | **Definition** | **Example Export** | |:---|:---|:---| | id | Unique transaction ID assigned by Voucherify. | vtx_0cb7811f1c07765800 | | type | Transaction type. | - `POINTS_EXPIRATION` <br> - `POINTS_ADDITION` <br> - `POINTS_REMOVAL` <br> - `POINTS_TRANSFER_OUT` <br> - `POINTS_ACCRUAL` <br> - `POINTS_REFUND` <br> - `POINTS_REDEMPTION` | | source_id | Custom source ID of the transaction if one was included originally. | source_id_custom | | reason | Contains the reason for the transaction if one was included originally. |  | | balance | The loyalty card balance after the transaction. |  | | amount | The amount of loyalty points being allocated during the transaction. This value can either be negative or positive depending on the nature of the transaction. |  | | created_at | Timestamp in ISO 8601 format representing the date and time when the transaction was created. | 2022-03-09T09:16:32.521Z  | | voucher_id | Unique Voucher ID. | v_dky7ksKfPX50Wb2Bxvcoeb1xT20b6tcp | | campaign_id | Parent campaign ID. | camp_FNYR4jhqZBM9xTptxDGgeNBV | | source|  Channel through which the transaction was initiated. | - `API` <br> - `voucherify-web-ui` <br> - `Automation` | | details | More detailed information stored in the form of a JSON. | Provides more details related to the transaction in the form of an object. | | related_transaction_id | Unique transaction ID related to a receiver/donor card in the case of a points transfer from/to another card. | vtx_0c9afe802593b34b80 |

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

#### Using the export_loyalty_card_transactions1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTransactionsExportCreateResponseBody>, Integer, Hash)> export_loyalty_card_transactions1_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # Export Loyalty Card Transactions
  data, status_code, headers = api_instance.export_loyalty_card_transactions1_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTransactionsExportCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->export_loyalty_card_transactions1_with_http_info: #{e}"
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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
earning_rule_id = 'earning_rule_id_example' # String | A unique earning rule ID.

begin
  # Get Earning Rule
  result = api_instance.get_earning_rule(campaign_id, earning_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_earning_rule: #{e}"
end
```

#### Using the get_earning_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesEarningRulesGetResponseBody>, Integer, Hash)> get_earning_rule_with_http_info(campaign_id, earning_rule_id)

```ruby
begin
  # Get Earning Rule
  data, status_code, headers = api_instance.get_earning_rule_with_http_info(campaign_id, earning_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesEarningRulesGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_earning_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
| **earning_rule_id** | **String** | A unique earning rule ID. |  |

### Return type

[**LoyaltiesEarningRulesGetResponseBody**](LoyaltiesEarningRulesGetResponseBody.md)

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

#### Using the get_loyalty_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesTiersGetResponseBody>, Integer, Hash)> get_loyalty_tier_with_http_info(campaign_id, loyalty_tier_id)

```ruby
begin
  # Get Loyalty Tier
  data, status_code, headers = api_instance.get_loyalty_tier_with_http_info(campaign_id, loyalty_tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesTiersGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_loyalty_tier_with_http_info: #{e}"
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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
assignment_id = 'assignment_id_example' # String | Unique reward assignment ID.

begin
  # Get Reward Assignment
  result = api_instance.get_reward_assignment1(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment1: #{e}"
end
```

#### Using the get_reward_assignment1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesRewardAssignmentsGetResponseBody>, Integer, Hash)> get_reward_assignment1_with_http_info(campaign_id, assignment_id)

```ruby
begin
  # Get Reward Assignment
  data, status_code, headers = api_instance.get_reward_assignment1_with_http_info(campaign_id, assignment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesRewardAssignmentsGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
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

Retrieve specific reward assignment.  > 📘 Alternative endpoint > > This endpoint is an alternative to this [endpoint](ref:get-reward-assignment-2). 

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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
assignment_id = 'assignment_id_example' # String | A unique reward assignment ID.

begin
  # Get Reward Assignment
  result = api_instance.get_reward_assignment2(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment2: #{e}"
end
```

#### Using the get_reward_assignment2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesRewardsGetResponseBody>, Integer, Hash)> get_reward_assignment2_with_http_info(campaign_id, assignment_id)

```ruby
begin
  # Get Reward Assignment
  data, status_code, headers = api_instance.get_reward_assignment2_with_http_info(campaign_id, assignment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesRewardsGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_assignment2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
assignment_id = 'assignment_id_example' # String | Unique reward assignment ID.

begin
  # Get Reward Details
  result = api_instance.get_reward_details(campaign_id, assignment_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_details: #{e}"
end
```

#### Using the get_reward_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesRewardAssignmentsRewardGetResponseBody>, Integer, Hash)> get_reward_details_with_http_info(campaign_id, assignment_id)

```ruby
begin
  # Get Reward Details
  data, status_code, headers = api_instance.get_reward_details_with_http_info(campaign_id, assignment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesRewardAssignmentsRewardGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->get_reward_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
| **assignment_id** | **String** | Unique reward assignment ID. |  |

### Return type

[**LoyaltiesRewardAssignmentsRewardGetResponseBody**](LoyaltiesRewardAssignmentsRewardGetResponseBody.md)

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
  page: 56 # Integer | Which page of results to return. The lowest value is `1`.
}

begin
  # List Loyalty Card Transactions
  result = api_instance.list_loyalty_card_transactions(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions: #{e}"
end
```

#### Using the list_loyalty_card_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTransactionsListResponseBody>, Integer, Hash)> list_loyalty_card_transactions_with_http_info(member_id, opts)

```ruby
begin
  # List Loyalty Card Transactions
  data, status_code, headers = api_instance.list_loyalty_card_transactions_with_http_info(member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTransactionsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to retrieve transaction data for. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |

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
  page: 56 # Integer | Which page of results to return. The lowest value is `1`.
}

begin
  # List Loyalty Card Transactions
  result = api_instance.list_loyalty_card_transactions1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions1: #{e}"
end
```

#### Using the list_loyalty_card_transactions1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTransactionsListResponseBody>, Integer, Hash)> list_loyalty_card_transactions1_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # List Loyalty Card Transactions
  data, status_code, headers = api_instance.list_loyalty_card_transactions1_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTransactionsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_card_transactions1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | A unique identifier of the loyalty campaign containing the voucher whose transactions you would like to return. |  |
| **member_id** | **String** | A unique code identifying the loyalty card that you are looking to retrieve transaction data for. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |

### Return type

[**LoyaltiesMembersTransactionsListResponseBody**](LoyaltiesMembersTransactionsListResponseBody.md)

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
  page: 56 # Integer | Which page of results to return. The lowest value is `1`.
}

begin
  # List Loyalty Tier Earning Rules
  result = api_instance.list_loyalty_tier_earning_rules(campaign_id, loyalty_tier_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tier_earning_rules: #{e}"
end
```

#### Using the list_loyalty_tier_earning_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesTiersEarningRulesListResponseBody>, Integer, Hash)> list_loyalty_tier_earning_rules_with_http_info(campaign_id, loyalty_tier_id, opts)

```ruby
begin
  # List Loyalty Tier Earning Rules
  data, status_code, headers = api_instance.list_loyalty_tier_earning_rules_with_http_info(campaign_id, loyalty_tier_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesTiersEarningRulesListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tier_earning_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Unique campaign ID or name. |  |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |

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

#### Using the list_loyalty_tier_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesTiersRewardsListResponseBody>, Integer, Hash)> list_loyalty_tier_rewards_with_http_info(campaign_id, loyalty_tier_id)

```ruby
begin
  # List Loyalty Tier Rewards
  data, status_code, headers = api_instance.list_loyalty_tier_rewards_with_http_info(campaign_id, loyalty_tier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesTiersRewardsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tier_rewards_with_http_info: #{e}"
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

#### Using the list_loyalty_tiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesTiersListResponseBody>, Integer, Hash)> list_loyalty_tiers_with_http_info(campaign_id, opts)

```ruby
begin
  # List Loyalty Tiers
  data, status_code, headers = api_instance.list_loyalty_tiers_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesTiersListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_loyalty_tiers_with_http_info: #{e}"
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

#### Using the list_member_loyalty_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTiersListResponseBody>, Integer, Hash)> list_member_loyalty_tier_with_http_info(member_id)

```ruby
begin
  # List Member's Loyalty Tiers
  data, status_code, headers = api_instance.list_member_loyalty_tier_with_http_info(member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTiersListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_loyalty_tier_with_http_info: #{e}"
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


## list_member_rewards

> <LoyaltiesMembersRewardsListResponseBody> list_member_rewards(member_id, opts)

List Member Rewards

Retrieves the list of rewards that the given customer (identified by `member_id`, which is a loyalty card assigned to a particular customer) **can get in exchange for loyalty points**.    You can use the `affordable_only` parameter to limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card).    Please note that rewards that are disabled (i.e. set to `Not Available` in the Dashboard) for a given loyalty tier reward mapping will not be returned in this endpoint.

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
  affordable_only: true # Boolean | Limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card). Set this flag to `true` to return rewards which the customer can actually afford.
}

begin
  # List Member Rewards
  result = api_instance.list_member_rewards(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_rewards: #{e}"
end
```

#### Using the list_member_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersRewardsListResponseBody>, Integer, Hash)> list_member_rewards_with_http_info(member_id, opts)

```ruby
begin
  # List Member Rewards
  data, status_code, headers = api_instance.list_member_rewards_with_http_info(member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersRewardsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_member_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Unique loyalty card assigned to a particular customer. |  |
| **affordable_only** | **Boolean** | Limit the results to rewards that the customer can actually afford (only rewards whose price in points is not higher than the loyalty points balance on a loyalty card). Set this flag to &#x60;true&#x60; to return rewards which the customer can actually afford. | [optional] |

### Return type

[**LoyaltiesMembersRewardsListResponseBody**](LoyaltiesMembersRewardsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_points_expiration

> <LoyaltiesMembersPointsExpirationListResponseBody> list_points_expiration(campaign_id, member_id, opts)

Get Points Expiration

Retrieve loyalty point expiration buckets for a given loyalty card. Expired point buckets are not returned in this endpoint. You can use the [Exports API](ref:create-export) to retrieve a list of both `ACTIVE` and `EXPIRED` point buckets.

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
campaign_id = 'campaign_id_example' # String | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the `name` of the campaign as the path parameter value, e.g., `Loyalty%20Campaign`. 
member_id = 'member_id_example' # String | Loyalty card code.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56 # Integer | Which page of results to return. The lowest value is `1`.
}

begin
  # Get Points Expiration
  result = api_instance.list_points_expiration(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_points_expiration: #{e}"
end
```

#### Using the list_points_expiration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersPointsExpirationListResponseBody>, Integer, Hash)> list_points_expiration_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # Get Points Expiration
  data, status_code, headers = api_instance.list_points_expiration_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersPointsExpirationListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->list_points_expiration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The campaign ID or name of the loyalty campaign. You can either pass the campaign ID, which was assigned by Voucherify, or the &#x60;name&#x60; of the campaign as the path parameter value, e.g., &#x60;Loyalty%20Campaign&#x60;.  |  |
| **member_id** | **String** | Loyalty card code. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |

### Return type

[**LoyaltiesMembersPointsExpirationListResponseBody**](LoyaltiesMembersPointsExpirationListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redeem_reward

> <LoyaltiesMembersRedemptionRedeemResponseBody> redeem_reward(member_id, opts)

Redeem Reward

<!-- theme: info --> > 📘 Alternative endpoint > > This endpoint is an alternative to this <!-- [endpoint](OpenAPI.json/paths/~1loyalties~1{campaignId}~1members~1{memberId}~1redemption) -->[endpoint](ref:redeem-reward-1). The URL was re-designed to allow you to redeem a reward without having to provide the `campaignId` as a path parameter.

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

#### Using the redeem_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersRedemptionRedeemResponseBody>, Integer, Hash)> redeem_reward_with_http_info(member_id, opts)

```ruby
begin
  # Redeem Reward
  data, status_code, headers = api_instance.redeem_reward_with_http_info(member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersRedemptionRedeemResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->redeem_reward_with_http_info: #{e}"
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

#### Using the redeem_reward1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersRedemptionRedeemResponseBody>, Integer, Hash)> redeem_reward1_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # Redeem Reward
  data, status_code, headers = api_instance.redeem_reward1_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersRedemptionRedeemResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->redeem_reward1_with_http_info: #{e}"
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
  loyalties_transfer_points: [VoucherifySdk::LoyaltiesTransferPoints.new({code: 'code_example', points: 37, source_id: 'source_id_example'})] # Array<LoyaltiesTransferPoints> | Provide the loyalty cards you want the points to be transferred from and the number of points to transfer from each card.
}

begin
  # Transfer Loyalty Points
  result = api_instance.transfer_points(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->transfer_points: #{e}"
end
```

#### Using the transfer_points_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersTransfersCreateResponseBody>, Integer, Hash)> transfer_points_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # Transfer Loyalty Points
  data, status_code, headers = api_instance.transfer_points_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersTransfersCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->transfer_points_with_http_info: #{e}"
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


## update_loyalty_card_balance

> <LoyaltiesMembersBalanceUpdateResponseBody> update_loyalty_card_balance(member_id, opts)

Add or Remove Loyalty Card Balance

This method gives adds or removes balance to an existing loyalty card. The removal of points will consume the points that expire the soonest.   <!-- theme: info -->   >🚧 Async Action >  > This is an async action. If you want to perform several add or remove loyalty card balance actions in a short time and their order matters, set up sufficient time-out between the calls.   > 📘 Alternative endpoint > This endpoint is an alternative to this <!-- [endpoint](OpenAPI.json/paths/~1loyalties~1{campaignId}~1members~1{memberId}~1balance) -->[endpoint](ref:update-loyalty-card-balance-1). The URL was re-designed to allow you to add or remove loyalty card balance without having to provide the `campaignId` as a path parameter.

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
  loyalties_members_balance_update_request_body: VoucherifySdk::LoyaltiesMembersBalanceUpdateRequestBody.new({points: 37}) # LoyaltiesMembersBalanceUpdateRequestBody | Specify the point adjustment along with the expiration mechanism.
}

begin
  # Add or Remove Loyalty Card Balance
  result = api_instance.update_loyalty_card_balance(member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance: #{e}"
end
```

#### Using the update_loyalty_card_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersBalanceUpdateResponseBody>, Integer, Hash)> update_loyalty_card_balance_with_http_info(member_id, opts)

```ruby
begin
  # Add or Remove Loyalty Card Balance
  data, status_code, headers = api_instance.update_loyalty_card_balance_with_http_info(member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersBalanceUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance_with_http_info: #{e}"
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

This method adds or removes balance to an existing loyalty card. The removal of points will consume the points that expire the soonest.    >🚧 Async Action >  > This is an async action. If you want to perform several add or remove loyalty card balance actions in a short time and their order matters, set up sufficient time-out between the calls.

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
  loyalties_members_balance_update_request_body: VoucherifySdk::LoyaltiesMembersBalanceUpdateRequestBody.new({points: 37}) # LoyaltiesMembersBalanceUpdateRequestBody | Specify the point adjustment along with the expiration mechanism.
}

begin
  # Add or Remove Loyalty Card Balance
  result = api_instance.update_loyalty_card_balance1(campaign_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance1: #{e}"
end
```

#### Using the update_loyalty_card_balance1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoyaltiesMembersBalanceUpdateResponseBody>, Integer, Hash)> update_loyalty_card_balance1_with_http_info(campaign_id, member_id, opts)

```ruby
begin
  # Add or Remove Loyalty Card Balance
  data, status_code, headers = api_instance.update_loyalty_card_balance1_with_http_info(campaign_id, member_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoyaltiesMembersBalanceUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LoyaltiesApi->update_loyalty_card_balance1_with_http_info: #{e}"
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

