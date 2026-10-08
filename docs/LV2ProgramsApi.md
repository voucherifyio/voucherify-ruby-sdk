# VoucherifySdk::LV2ProgramsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_create_program_members**](LV2ProgramsApi.md#batch_create_program_members) | **POST** /v2/loyalties/programs/{programId}/members/batch | Batch create program members |
| [**create_member_order_payment**](LV2ProgramsApi.md#create_member_order_payment) | **POST** /v2/loyalties/programs/{programId}/members/{memberId}/orders/payments | Pay for order with points |
| [**create_program_member**](LV2ProgramsApi.md#create_program_member) | **POST** /v2/loyalties/programs/{programId}/members | Create program member |
| [**get_program_member**](LV2ProgramsApi.md#get_program_member) | **GET** /v2/loyalties/programs/{programId}/members/{memberId} | Get program member |
| [**get_program_membership**](LV2ProgramsApi.md#get_program_membership) | **GET** /v2/loyalties/programs/{programId}/memberships/{customerId} | Get program membership |
| [**list_card_transactions**](LV2ProgramsApi.md#list_card_transactions) | **GET** /v2/loyalties/programs/{programId}/members/{memberId}/cards/{cardId}/transactions | List card transactions |
| [**list_member_order_payments**](LV2ProgramsApi.md#list_member_order_payments) | **GET** /v2/loyalties/programs/{programId}/members/{memberId}/orders/payments | List member order payments |
| [**list_member_reward_purchases**](LV2ProgramsApi.md#list_member_reward_purchases) | **GET** /v2/loyalties/programs/{programId}/members/{memberId}/rewards/purchases | List member reward purchases |
| [**purchase_member_reward**](LV2ProgramsApi.md#purchase_member_reward) | **POST** /v2/loyalties/programs/{programId}/members/{memberId}/rewards/purchases | Purchase reward with points |


## batch_create_program_members

> <LoyaltiesProgramsMembersCreateInBulkResponseBody> batch_create_program_members(program_id, opts)

Batch create program members

Schedules creation of program members from a JSON array and returns 202 with async_action_id. The program must exist, be ACTIVE, and be inside its validity window. The body isnt checked before that response. Entries are processed in batches of 100. The raw body must be at most 10 MB. Each entry uses the same fields as [Create program member](/api-reference/programs/create-program-member). A failed entry is skipped. Its report row sets created to false and explains the failure in error. Skipped cases include an invalid customer_identification, an unknown customer, an invalid status, a duplicate customer in the batch (Duplicate customer ID), a customer who is already a member (Member already exists), metadata that doesnt match the vl_member schema, and entries past the loyalty members plan limit. Successful entries enroll the customer and create a loyalty card for each card definition on the program. Report columns are identification_type, customer_id, customer_source_id, program_id, member_id, created, and error. An empty array or a null entry fails the async action with invalid_request_payload. A body that isnt a JSON array fails it with top_level_object_should_be_an_array. Use [Get async action](/api-reference/async-actions/get-async-action) to read the status and the report. You can also open the result from Audit log, [Background tasks](/analyze/audit-logs#background-tasks).

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program ID (format lprg_[a-f0-9]+).
opts = {
  member_create: [VoucherifySdk::MemberCreate.new({customer_identification: 3.56})] # Array<MemberCreate> | 
}

begin
  # Batch create program members
  result = api_instance.batch_create_program_members(program_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->batch_create_program_members: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program ID (format lprg_[a-f0-9]+). |  |
| **member_create** | [**Array&lt;MemberCreate&gt;**](MemberCreate.md) |  | [optional] |

### Return type

[**LoyaltiesProgramsMembersCreateInBulkResponseBody**](LoyaltiesProgramsMembersCreateInBulkResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_member_order_payment

> <LoyaltiesProgramsMembersOrdersPaymentsCreateCombinedResponseBody> create_member_order_payment(program_id, member_id, opts)

Pay for order with points

Pays for an order with points from the members card. The amount and points come from the card definitions pay-with-points exchange ratio, limited by the order total, the card balance, card spending caps, and the optional payment_limit. The binding cap is returned as details.spending_cap. The program and member must be ACTIVE, and the program must be inside its validity window. The card must belong to the member. The card definition must have pay-with-points enabled and an exchange-ratio formula. The order must already exist, identified by id or source_id. Modes: - TRANSACTION (default): creates a PENDING order transaction and a PENDING card transaction. Returns 202. The same order can be paid again; each call creates a new transaction. - DRY_RUN: simulates the payment and doesnt create a transaction. Returns 200 with status SIMULATED.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Identifies the loyalty program (lprg_ followed by hexadecimal characters).
member_id = 'member_id_example' # String | Identifies the program member (lmbr_[a-f0-9]+).
opts = {
  loyalties_programs_members_orders_payments_create_request_body: VoucherifySdk::LoyaltiesProgramsMembersOrdersPaymentsCreateRequestBody.new({order: VoucherifySdk::OrderPaymentOrder.new}) # LoyaltiesProgramsMembersOrdersPaymentsCreateRequestBody | 
}

begin
  # Pay for order with points
  result = api_instance.create_member_order_payment(program_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->create_member_order_payment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Identifies the loyalty program (lprg_ followed by hexadecimal characters). |  |
| **member_id** | **String** | Identifies the program member (lmbr_[a-f0-9]+). |  |
| **loyalties_programs_members_orders_payments_create_request_body** | [**LoyaltiesProgramsMembersOrdersPaymentsCreateRequestBody**](LoyaltiesProgramsMembersOrdersPaymentsCreateRequestBody.md) |  | [optional] |

### Return type

[**LoyaltiesProgramsMembersOrdersPaymentsCreateCombinedResponseBody**](LoyaltiesProgramsMembersOrdersPaymentsCreateCombinedResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_program_member

> <LoyaltiesProgramsMembersCreateResponseBody> create_program_member(program_id, opts)

Create program member

Enrolls an existing customer as a member of the loyalty program and creates a loyalty card for each card definition assigned to the program. Card code generation is asynchronous, so code can be null right after creation. The program must be ACTIVE and inside its validity window, and the customer must already exist. A customer can be a member of a program only once. Identify the customer with customer_identification. status defaults to ACTIVE.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program ID (format lprg_[a-f0-9]+).
opts = {
  loyalties_programs_members_create_request_body: VoucherifySdk::LoyaltiesProgramsMembersCreateRequestBody.new({customer_identification: 3.56}) # LoyaltiesProgramsMembersCreateRequestBody | 
}

begin
  # Create program member
  result = api_instance.create_program_member(program_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->create_program_member: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program ID (format lprg_[a-f0-9]+). |  |
| **loyalties_programs_members_create_request_body** | [**LoyaltiesProgramsMembersCreateRequestBody**](LoyaltiesProgramsMembersCreateRequestBody.md) |  | [optional] |

### Return type

[**LoyaltiesProgramsMembersCreateResponseBody**](LoyaltiesProgramsMembersCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_program_member

> <MemberWithCards> get_program_member(program_id, member_id)

Get program member

 <Info> <Badge color gray>Documentation in progress</Badge> This documentation is in progress. The parameters, fields, request and response bodies, and other data may be subject to change. If you need more information or you want to share feedback, contact [Voucherify support](https://www.voucherify.io/contact-support) or your Technical Account Manager. </Info> Returns one member of the program together with that members loyalty cards. Each card includes balance, lifetime_bucket, next_expiration, and next_activation. tier_progress is not included. Use [Get program membership](/api-reference/programs/get-program-membership) when you need tier progress. card.code can be null shortly after member creation, while code generation is still running. Returns 404 when the program doesnt exist, or when the member doesnt exist in that program. The program is checked first.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program ID (format lprg_[a-f0-9]+).
member_id = 'member_id_example' # String | Program member ID (format lmbr_[a-f0-9]+).

begin
  # Get program member
  result = api_instance.get_program_member(program_id, member_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->get_program_member: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program ID (format lprg_[a-f0-9]+). |  |
| **member_id** | **String** | Program member ID (format lmbr_[a-f0-9]+). |  |

### Return type

[**MemberWithCards**](MemberWithCards.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_program_membership

> <LoyaltiesProgramsMembershipsGetResponseBody> get_program_membership(program_id, customer_id, opts)

Get program membership

Returns the membership for one customer in the program: the member, the program, and the members loyalty cards. A card includes tier_progress when its card definition has a tier structure and the member has a tier on that card. Otherwise tier_progress is omitted. identification_type chooses how customerId is read. It defaults to customer_id.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program ID (format lprg_[a-f0-9]+).
customer_id = 'customer_id_example' # String | Unique identifier of the customer or member, interpreted according to identification_type: a Voucherify customer ID (cust_...), a customer source_id, or a loyalty member ID (lmbr_...).
opts = {
  identification_type: 'customer_id' # String | Chooses how customerId is read. customer_id is the Voucherify customer ID and the default. customer_source_id is the customers source_id. member_id is the loyalty member ID.
}

begin
  # Get program membership
  result = api_instance.get_program_membership(program_id, customer_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->get_program_membership: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program ID (format lprg_[a-f0-9]+). |  |
| **customer_id** | **String** | Unique identifier of the customer or member, interpreted according to identification_type: a Voucherify customer ID (cust_...), a customer source_id, or a loyalty member ID (lmbr_...). |  |
| **identification_type** | **String** | Chooses how customerId is read. customer_id is the Voucherify customer ID and the default. customer_source_id is the customers source_id. member_id is the loyalty member ID. | [optional][default to &#39;customer_id&#39;] |

### Return type

[**LoyaltiesProgramsMembershipsGetResponseBody**](LoyaltiesProgramsMembershipsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_card_transactions

> <LoyaltiesProgramsMembersCardsTransactionsListResponseBody> list_card_transactions(program_id, member_id, card_id, opts)

List card transactions

Returns a cursor-paginated list of transactions on the members card. Filter by id, card_definition_id, and created_at. Order by id (default -id, newest first). Returns 404 when the program, member, or card doesnt exist. The program is checked first, then the member, then the card. A member of another program, or a card that isnt assigned to this member, is not found.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program ID (format lprg_[a-f0-9]+).
member_id = 'member_id_example' # String | Program member ID (format lmbr_[a-f0-9]+).
card_id = 'card_id_example' # String | Loyalty card ID (format lcrd_[a-f0-9]+).
opts = {
  limit: 56, # Integer | Maximum number of transactions to return. Must be between 1 and 100. Defaults to 10 when not provided.
  order: nil, # ListCardTransactionsOrderParameter | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected.
  cursor: 'cursor_example', # String | Pagination cursor returned in the cursor.next field of a previous response. Must match the pattern ^lcrsctx_[a-f0-9]+$.
  filters: VoucherifySdk::LoyaltiesProgramsMembersCardsTransactionsListRequestQuery.new # LoyaltiesProgramsMembersCardsTransactionsListRequestQuery | Field-specific filter conditions, passed as a deep object, e.g. filters[id][conditions][$is] lctx_0f5d0a8878caa3ee5c.
}

begin
  # List card transactions
  result = api_instance.list_card_transactions(program_id, member_id, card_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->list_card_transactions: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program ID (format lprg_[a-f0-9]+). |  |
| **member_id** | **String** | Program member ID (format lmbr_[a-f0-9]+). |  |
| **card_id** | **String** | Loyalty card ID (format lcrd_[a-f0-9]+). |  |
| **limit** | **Integer** | Maximum number of transactions to return. Must be between 1 and 100. Defaults to 10 when not provided. | [optional][default to 10] |
| **order** | [**ListCardTransactionsOrderParameter**](.md) | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected. | [optional] |
| **cursor** | **String** | Pagination cursor returned in the cursor.next field of a previous response. Must match the pattern ^lcrsctx_[a-f0-9]+$. | [optional] |
| **filters** | [**LoyaltiesProgramsMembersCardsTransactionsListRequestQuery**](.md) | Field-specific filter conditions, passed as a deep object, e.g. filters[id][conditions][$is] lctx_0f5d0a8878caa3ee5c. | [optional] |

### Return type

[**LoyaltiesProgramsMembersCardsTransactionsListResponseBody**](LoyaltiesProgramsMembersCardsTransactionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_order_payments

> <LoyaltiesProgramsMembersOrdersPaymentsListResponseBody> list_member_order_payments(program_id, member_id, opts)

List member order payments

Lists stored PAY_WITH_POINTS order transactions for the program member, with cursor pagination. Filter by id, card_definition_id, and created_at. Order by id (default -id, newest first). Dry-run (SIMULATED) results arent stored and dont appear. Returns 404 when the program or the member doesnt exist. The program is checked first.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Identifies the loyalty program (lprg_ followed by hexadecimal characters).
member_id = 'member_id_example' # String | Identifies the program member (lmbr_[a-f0-9]+).
opts = {
  limit: 56, # Integer | Maximum number of items to return. An integer between 1 and 100; numeric strings are also accepted. Defaults to 10.
  order: nil, # ListCardTransactionsOrderParameter | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected.
  cursor: 'cursor_example', # String | Pagination cursor returned in the cursor.next field of a previous response (format: lcrsotx_ followed by hexadecimal characters).
  filters: VoucherifySdk::LoyaltiesProgramsMembersOrdersPaymentsListRequestQuery.new # LoyaltiesProgramsMembersOrdersPaymentsListRequestQuery | Filters results by field, e.g. filters[id][conditions][$is] lotx_.... Each field accepts a conditions object with condition operators.
}

begin
  # List member order payments
  result = api_instance.list_member_order_payments(program_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->list_member_order_payments: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Identifies the loyalty program (lprg_ followed by hexadecimal characters). |  |
| **member_id** | **String** | Identifies the program member (lmbr_[a-f0-9]+). |  |
| **limit** | **Integer** | Maximum number of items to return. An integer between 1 and 100; numeric strings are also accepted. Defaults to 10. | [optional][default to 10] |
| **order** | [**ListCardTransactionsOrderParameter**](.md) | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected. | [optional] |
| **cursor** | **String** | Pagination cursor returned in the cursor.next field of a previous response (format: lcrsotx_ followed by hexadecimal characters). | [optional] |
| **filters** | [**LoyaltiesProgramsMembersOrdersPaymentsListRequestQuery**](.md) | Filters results by field, e.g. filters[id][conditions][$is] lotx_.... Each field accepts a conditions object with condition operators. | [optional] |

### Return type

[**LoyaltiesProgramsMembersOrdersPaymentsListResponseBody**](LoyaltiesProgramsMembersOrdersPaymentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_member_reward_purchases

> <LoyaltiesProgramsMembersRewardsPurchasesListResponseBody> list_member_reward_purchases(program_id, member_id, opts)

List member reward purchases

Lists stored PURCHASE reward transactions for the program member, with cursor pagination. Filter by id, reward_id, card_definition_id, and created_at. Order by id (default -id, newest first). Purchases rejected before a transaction is stored dont appear. A purchase accepted with 202 that later fails is stored as REJECTED with details.rejection. Returns 404 when the program or the member doesnt exist. The program is checked first.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program identifier (format: lprg_ followed by hexadecimal characters).
member_id = 'member_id_example' # String | Program member ID (format lmbr_[a-f0-9]+).
opts = {
  limit: 56, # Integer | Maximum number of items to return. An integer between 1 and 100; numeric strings are also accepted. Defaults to 10.
  order: nil, # ListCardTransactionsOrderParameter | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected.
  cursor: 'cursor_example', # String | Pagination cursor returned in the cursor.next field of a previous response (format: lcrstrx_ followed by hexadecimal characters).
  filters: VoucherifySdk::LoyaltiesProgramsMembersRewardsPurchasesListRequestQuery.new # LoyaltiesProgramsMembersRewardsPurchasesListRequestQuery | Field filters, e.g. filters[reward_id][conditions][$is] lrew_.... Each field accepts a conditions object with condition operators.
}

begin
  # List member reward purchases
  result = api_instance.list_member_reward_purchases(program_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->list_member_reward_purchases: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program identifier (format: lprg_ followed by hexadecimal characters). |  |
| **member_id** | **String** | Program member ID (format lmbr_[a-f0-9]+). |  |
| **limit** | **Integer** | Maximum number of items to return. An integer between 1 and 100; numeric strings are also accepted. Defaults to 10. | [optional][default to 10] |
| **order** | [**ListCardTransactionsOrderParameter**](.md) | Orders results by transaction id. -id is newest first and the default. id is oldest first. An array that orders by id and -id together is rejected. | [optional] |
| **cursor** | **String** | Pagination cursor returned in the cursor.next field of a previous response (format: lcrstrx_ followed by hexadecimal characters). | [optional] |
| **filters** | [**LoyaltiesProgramsMembersRewardsPurchasesListRequestQuery**](.md) | Field filters, e.g. filters[reward_id][conditions][$is] lrew_.... Each field accepts a conditions object with condition operators. | [optional] |

### Return type

[**LoyaltiesProgramsMembersRewardsPurchasesListResponseBody**](LoyaltiesProgramsMembersRewardsPurchasesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_member_reward

> <LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBody> purchase_member_reward(program_id, member_id, opts)

Purchase reward with points

Purchases a reward for the program member by spending points from the members card. The card comes from the matching reward costs card definition. The program, reward, and member must be ACTIVE. The program and reward must be inside their validity windows. The reward must be assigned to the program with stock available, a cost must match the customer, and the purchase must stay inside frequency, cooldown, balance, and spending limits. Modes: - TRANSACTION (default): creates a PENDING reward transaction and a PENDING card transaction. Returns 202. - DRY_RUN: simulates the purchase and doesnt create a transaction. Returns 200 with status SIMULATED.

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

api_instance = VoucherifySdk::LV2ProgramsApi.new
program_id = 'program_id_example' # String | Unique loyalty program identifier (format: lprg_ followed by hexadecimal characters).
member_id = 'member_id_example' # String | Program member ID (format lmbr_[a-f0-9]+).
opts = {
  loyalties_programs_members_rewards_purchases_create_request_body: VoucherifySdk::LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody.new # LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody | 
}

begin
  # Purchase reward with points
  result = api_instance.purchase_member_reward(program_id, member_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LV2ProgramsApi->purchase_member_reward: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **program_id** | **String** | Unique loyalty program identifier (format: lprg_ followed by hexadecimal characters). |  |
| **member_id** | **String** | Program member ID (format lmbr_[a-f0-9]+). |  |
| **loyalties_programs_members_rewards_purchases_create_request_body** | [**LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody**](LoyaltiesProgramsMembersRewardsPurchasesCreateRequestBody.md) |  | [optional] |

### Return type

[**LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBody**](LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

