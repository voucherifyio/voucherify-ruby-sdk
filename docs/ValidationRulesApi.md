# VoucherifySdk::ValidationRulesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_validation_rule_assignment**](ValidationRulesApi.md#create_validation_rule_assignment) | **POST** /v1/validation-rules/{validationRuleId}/assignments | Create Validation Rules Assignments |
| [**create_validation_rules**](ValidationRulesApi.md#create_validation_rules) | **POST** /v1/validation-rules | Create Validation Rules |
| [**delete_validation_rule_assignment**](ValidationRulesApi.md#delete_validation_rule_assignment) | **DELETE** /v1/validation-rules/{validationRuleId}/assignments/{assignmentId} | Delete Validation Rule Assignment |
| [**delete_validation_rules**](ValidationRulesApi.md#delete_validation_rules) | **DELETE** /v1/validation-rules/{validationRuleId} | Delete Validation Rule |
| [**get_validation_rule**](ValidationRulesApi.md#get_validation_rule) | **GET** /v1/validation-rules/{validationRuleId} | Get Validation Rule |
| [**list_validation_rule_assignments**](ValidationRulesApi.md#list_validation_rule_assignments) | **GET** /v1/validation-rules/{validationRuleId}/assignments | List Validation Rule Assignments |
| [**list_validation_rules**](ValidationRulesApi.md#list_validation_rules) | **GET** /v1/validation-rules | List Validation Rules |
| [**list_validation_rules_assignments**](ValidationRulesApi.md#list_validation_rules_assignments) | **GET** /v1/validation-rules-assignments | List Validation Rules&#39; Assignment(s) |
| [**update_validation_rule**](ValidationRulesApi.md#update_validation_rule) | **PUT** /v1/validation-rules/{validationRuleId} | Update Validation Rule |


## create_validation_rule_assignment

> <ValidationRulesAssignmentsCreateResponseBody> create_validation_rule_assignment(validation_rule_id, opts)

Create Validation Rules Assignments

Assign validation rule to either one of the following objects: voucher, campaign, promotion tier, earning rule, reward, distribution.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | Unique validation rule ID.
opts = {
  force: true, # Boolean | If this flag is set to true, the previous assignment with the same data will be deleted and a new one will be added.
  validation_rules_assignments_create_request_body: VoucherifySdk::ValidationRulesAssignmentsCreateRequestBody.new # ValidationRulesAssignmentsCreateRequestBody | Specify the resource that you would like to assign the validation rule to.
}

begin
  # Create Validation Rules Assignments
  result = api_instance.create_validation_rule_assignment(validation_rule_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->create_validation_rule_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | Unique validation rule ID. |  |
| **force** | **Boolean** | If this flag is set to true, the previous assignment with the same data will be deleted and a new one will be added. | [optional] |
| **validation_rules_assignments_create_request_body** | [**ValidationRulesAssignmentsCreateRequestBody**](ValidationRulesAssignmentsCreateRequestBody.md) | Specify the resource that you would like to assign the validation rule to. | [optional] |

### Return type

[**ValidationRulesAssignmentsCreateResponseBody**](ValidationRulesAssignmentsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_validation_rules

> <ValidationRulesCreateResponseBody> create_validation_rules(opts)

Create Validation Rules

Create validation rules.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
opts = {
  validation_rules_create_request_body: VoucherifySdk::ValidationRulesCreateRequestBody.new # ValidationRulesCreateRequestBody | Specify the validation rules parameters.
}

begin
  # Create Validation Rules
  result = api_instance.create_validation_rules(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->create_validation_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rules_create_request_body** | [**ValidationRulesCreateRequestBody**](ValidationRulesCreateRequestBody.md) | Specify the validation rules parameters. | [optional] |

### Return type

[**ValidationRulesCreateResponseBody**](ValidationRulesCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_validation_rule_assignment

> delete_validation_rule_assignment(validation_rule_id, assignment_id)

Delete Validation Rule Assignment

This method deletes a validation rule assignment.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | A unique validation rule ID.
assignment_id = 'assignment_id_example' # String | A unique validation rule assignment ID.

begin
  # Delete Validation Rule Assignment
  api_instance.delete_validation_rule_assignment(validation_rule_id, assignment_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->delete_validation_rule_assignment: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | A unique validation rule ID. |  |
| **assignment_id** | **String** | A unique validation rule assignment ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_validation_rules

> delete_validation_rules(validation_rule_id)

Delete Validation Rule

This method deletes a validation rule.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | A unique validation rule ID.

begin
  # Delete Validation Rule
  api_instance.delete_validation_rules(validation_rule_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->delete_validation_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | A unique validation rule ID. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_validation_rule

> <ValidationRulesGetResponseBody> get_validation_rule(validation_rule_id)

Get Validation Rule

Retrieve the details of a validation rule.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | A unique validation rule ID.

begin
  # Get Validation Rule
  result = api_instance.get_validation_rule(validation_rule_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->get_validation_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | A unique validation rule ID. |  |

### Return type

[**ValidationRulesGetResponseBody**](ValidationRulesGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_validation_rule_assignments

> <ValidationRulesAssignmentsListResponseBody> list_validation_rule_assignments(validation_rule_id, opts)

List Validation Rule Assignments

Retrieve validation rule assignments for a specific validation rule.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | Unique validation rule ID.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListValidationRuleAssignments::CREATED_AT # ParameterOrderListValidationRuleAssignments | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Validation Rule Assignments
  result = api_instance.list_validation_rule_assignments(validation_rule_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->list_validation_rule_assignments: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | Unique validation rule ID. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListValidationRuleAssignments**](.md) | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**ValidationRulesAssignmentsListResponseBody**](ValidationRulesAssignmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_validation_rules

> <ValidationRulesListResponseBody> list_validation_rules(opts)

List Validation Rules

Retrieve validation rules.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  order: VoucherifySdk::ParameterOrderListValidationRules::CREATED_AT, # ParameterOrderListValidationRules | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Timestamp representing the date and time which results must start on. Represented in ISO 8601 format.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format.
}

begin
  # List Validation Rules
  result = api_instance.list_validation_rules(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->list_validation_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **order** | [**ParameterOrderListValidationRules**](.md) | This is a property that controls the sorting direction of the results. Sort the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **start_date** | **Time** | Timestamp representing the date and time which results must start on. Represented in ISO 8601 format. | [optional] |
| **end_date** | **Time** | Timestamp representing the date and time which results must end on. Represented in ISO 8601 format. | [optional] |

### Return type

[**ValidationRulesListResponseBody**](ValidationRulesListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_validation_rules_assignments

> <ValidationRulesAssignmentsListResponseBody> list_validation_rules_assignments(opts)

List Validation Rules' Assignment(s)

List all validation rules assignments or filter the results using the related object ID or the validation rule ID query parameters.  # How to retrieve specific validation rule assignments(s) ## Related object ID To find an assignment for a particular resource, you can use the ID of the object to which the validation rule was assigned. This could be, for example, an ID of a: voucher, campaign, distribution, reward assignment, earning rule, promotion tier.    ## Validation rule ID You can use the validation rule ID to find assignment(s) for a specific validation rule.  

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

api_instance = VoucherifySdk::ValidationRulesApi.new
opts = {
  related_object_id: 'related_object_id_example', # String | The resource ID to which the validation rule was assigned; this could be, for example, a resource ID of a voucher, campaign, earning rule, reward assignment, promotion tier, or distribution.
  rule: 'rule_example', # String | Validation rule ID.
  page: 56, # Integer | Which page of results to return. The lowest value is 1.
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: 'order_example' # String | Sorts the results using one of the filtering options: -created_at, created_at, where the dash - preceding a sorting option means sorting in a descending order.
}

begin
  # List Validation Rules' Assignment(s)
  result = api_instance.list_validation_rules_assignments(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->list_validation_rules_assignments: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **related_object_id** | **String** | The resource ID to which the validation rule was assigned; this could be, for example, a resource ID of a voucher, campaign, earning rule, reward assignment, promotion tier, or distribution. | [optional] |
| **rule** | **String** | Validation rule ID. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is 1. | [optional] |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | **String** | Sorts the results using one of the filtering options: -created_at, created_at, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |

### Return type

[**ValidationRulesAssignmentsListResponseBody**](ValidationRulesAssignmentsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_validation_rule

> <ValidationRulesUpdateResponseBody> update_validation_rule(validation_rule_id, opts)

Update Validation Rule

Update validation rule parameters.

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

api_instance = VoucherifySdk::ValidationRulesApi.new
validation_rule_id = 'validation_rule_id_example' # String | A unique validation rule ID.
opts = {
  validation_rules_update_request_body: VoucherifySdk::ValidationRulesUpdateRequestBody.new # ValidationRulesUpdateRequestBody | Specify the parameters to be updated.
}

begin
  # Update Validation Rule
  result = api_instance.update_validation_rule(validation_rule_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ValidationRulesApi->update_validation_rule: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_rule_id** | **String** | A unique validation rule ID. |  |
| **validation_rules_update_request_body** | [**ValidationRulesUpdateRequestBody**](ValidationRulesUpdateRequestBody.md) | Specify the parameters to be updated. | [optional] |

### Return type

[**ValidationRulesUpdateResponseBody**](ValidationRulesUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

