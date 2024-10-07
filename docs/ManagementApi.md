# VoucherifySdk::ManagementApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_user**](ManagementApi.md#assign_user) | **POST** /management/v1/projects/{projectId}/users | Assign User |
| [**create_brand**](ManagementApi.md#create_brand) | **POST** /management/v1/projects/{projectId}/branding | Create Brand |
| [**create_custom_event_schema**](ManagementApi.md#create_custom_event_schema) | **POST** /management/v1/projects/{projectId}/custom-event-schemas | Create Custom Event Schema |
| [**create_metadata_schema**](ManagementApi.md#create_metadata_schema) | **POST** /management/v1/projects/{projectId}/metadata-schemas | Create Metadata Schema |
| [**create_project**](ManagementApi.md#create_project) | **POST** /management/v1/projects | Create Project |
| [**create_stacking_rules**](ManagementApi.md#create_stacking_rules) | **POST** /management/v1/projects/{projectId}/stacking-rules | Create Stacking Rules |
| [**create_webhook**](ManagementApi.md#create_webhook) | **POST** /management/v1/projects/{projectId}/webhooks | Create Webhook |
| [**delete_brand**](ManagementApi.md#delete_brand) | **DELETE** /management/v1/projects/{projectId}/branding/{brandingId} | Delete Brand |
| [**delete_custom_event_schema**](ManagementApi.md#delete_custom_event_schema) | **DELETE** /management/v1/projects/{projectId}/custom-event-schemas/{customEventSchemaId} | Delete Custom Event Schema |
| [**delete_metadata_schema**](ManagementApi.md#delete_metadata_schema) | **DELETE** /management/v1/projects/{projectId}/metadata-schemas/{metadataSchemaId} | Delete Metadata Schema |
| [**delete_project**](ManagementApi.md#delete_project) | **DELETE** /management/v1/projects/{projectId} | Delete Project |
| [**delete_stacking_rules**](ManagementApi.md#delete_stacking_rules) | **DELETE** /management/v1/projects/{projectId}/stacking-rules/{stackingRulesId} | Delete Stacking Rules |
| [**delete_webhook**](ManagementApi.md#delete_webhook) | **DELETE** /management/v1/projects/{projectId}/webhooks/{webhookId} | Delete Webhook |
| [**get_brand**](ManagementApi.md#get_brand) | **GET** /management/v1/projects/{projectId}/branding/{brandingId} | Get Brand |
| [**get_custom_event_schema**](ManagementApi.md#get_custom_event_schema) | **GET** /management/v1/projects/{projectId}/custom-event-schemas/{customEventSchemaId} | Get Custom Event Schema |
| [**get_metadata_schema1**](ManagementApi.md#get_metadata_schema1) | **GET** /management/v1/projects/{projectId}/metadata-schemas/{metadataSchemaId} | Get Metadata Schema |
| [**get_project**](ManagementApi.md#get_project) | **GET** /management/v1/projects/{projectId} | Get Project |
| [**get_stacking_rules**](ManagementApi.md#get_stacking_rules) | **GET** /management/v1/projects/{projectId}/stacking-rules/{stackingRulesId} | Get Stacking Rules |
| [**get_user**](ManagementApi.md#get_user) | **GET** /management/v1/projects/{projectId}/users/{userId} | Get User |
| [**get_webhook**](ManagementApi.md#get_webhook) | **GET** /management/v1/projects/{projectId}/webhooks/{webhookId} | Get Webhook |
| [**invite_user**](ManagementApi.md#invite_user) | **POST** /management/v1/projects/users/invite | Invite a New User |
| [**list_brands**](ManagementApi.md#list_brands) | **GET** /management/v1/projects/{projectId}/branding | List Brands |
| [**list_custom_event_schemas**](ManagementApi.md#list_custom_event_schemas) | **GET** /management/v1/projects/{projectId}/custom-event-schemas | List Custom Event Schemas |
| [**list_metadata_schemas1**](ManagementApi.md#list_metadata_schemas1) | **GET** /management/v1/projects/{projectId}/metadata-schemas | List Metadata Schemas |
| [**list_projects**](ManagementApi.md#list_projects) | **GET** /management/v1/projects | List Projects |
| [**list_stacking_rules**](ManagementApi.md#list_stacking_rules) | **GET** /management/v1/projects/{projectId}/stacking-rules | List Stacking Rules |
| [**list_users**](ManagementApi.md#list_users) | **GET** /management/v1/projects/{projectId}/users | List Users |
| [**list_webhooks**](ManagementApi.md#list_webhooks) | **GET** /management/v1/projects/{projectId}/webhooks | List Webhooks |
| [**management_copy_campaign_template**](ManagementApi.md#management_copy_campaign_template) | **POST** /management/v1/projects/{projectId}/templates/campaigns/{campaignTemplateId}/copy | Copy Campaign Template to a Project |
| [**management_list_campaign_templates**](ManagementApi.md#management_list_campaign_templates) | **GET** /management/v1/projects/{projectId}/templates/campaigns | List Campaign Templates |
| [**unassign_user**](ManagementApi.md#unassign_user) | **DELETE** /management/v1/projects/{projectId}/users/{userId} | Unassign User |
| [**update_brand**](ManagementApi.md#update_brand) | **PUT** /management/v1/projects/{projectId}/branding/{brandingId} | Update Brand |
| [**update_custom_event_schema**](ManagementApi.md#update_custom_event_schema) | **PUT** /management/v1/projects/{projectId}/custom-event-schemas/{customEventSchemaId} | Update Custom Event Schema |
| [**update_metadata_schema**](ManagementApi.md#update_metadata_schema) | **PUT** /management/v1/projects/{projectId}/metadata-schemas/{metadataSchemaId} | Update Metadata Schema |
| [**update_project**](ManagementApi.md#update_project) | **PUT** /management/v1/projects/{projectId} | Update Project |
| [**update_stacking_rules**](ManagementApi.md#update_stacking_rules) | **PUT** /management/v1/projects/{projectId}/stacking-rules/{stackingRulesId} | Update Stacking Rules |
| [**update_user**](ManagementApi.md#update_user) | **PUT** /management/v1/projects/{projectId}/users/{userId} | Update User |
| [**update_webhook**](ManagementApi.md#update_webhook) | **PUT** /management/v1/projects/{projectId}/webhooks/{webhookId} | Update Webhook |


## assign_user

> <ManagementProjectsUsersAssignResponseBody> assign_user(project_id, opts)

Assign User

Assigns a user to a given project. The user must be an existing user in Voucherify.  🚧 Correct Use of Data To avoid errors, use the role key with either id or login keys.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_users_assign_request_body: VoucherifySdk::ManagementProjectsUsersAssignRequestBody.new # ManagementProjectsUsersAssignRequestBody | Defines the user details.
}

begin
  # Assign User
  result = api_instance.assign_user(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->assign_user: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_users_assign_request_body** | [**ManagementProjectsUsersAssignRequestBody**](ManagementProjectsUsersAssignRequestBody.md) | Defines the user details. | [optional] |

### Return type

[**ManagementProjectsUsersAssignResponseBody**](ManagementProjectsUsersAssignResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_brand

> <ManagementProjectsBrandingCreateResponseBody> create_brand(project_id, opts)

Create Brand

Creates a new brand configuration. You can have only one brand configured for a project.  📘 White Labelling  The white labelling settings which can be found in Project Settings > Brand Details and which are available only for Enterprise clients as a separate service can be configured only in the user interface.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_branding_create_request_body: VoucherifySdk::ManagementProjectsBrandingCreateRequestBody.new # ManagementProjectsBrandingCreateRequestBody | Defines a brand configuration.
}

begin
  # Create Brand
  result = api_instance.create_brand(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_brand: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_branding_create_request_body** | [**ManagementProjectsBrandingCreateRequestBody**](ManagementProjectsBrandingCreateRequestBody.md) | Defines a brand configuration. | [optional] |

### Return type

[**ManagementProjectsBrandingCreateResponseBody**](ManagementProjectsBrandingCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_custom_event_schema

> <ManagementProjectsCustomEventSchemasCreateResponseBody> create_custom_event_schema(project_id, opts)

Create Custom Event Schema

Creates a custom event schema. The properties object is required, but it can be empty, however. This object is for optional custom properties (metadata).  📘 Custom Event Documentation  Read [Custom Events](https://support.voucherify.io/article/111-custom-events) article to learn how custom events work in Voucherify. Read also the details about the Track Custom Event endpoint and the Custom Event Object.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_custom_event_schemas_create_request_body: VoucherifySdk::ManagementProjectsCustomEventSchemasCreateRequestBody.new # ManagementProjectsCustomEventSchemasCreateRequestBody | Defines the custom event schema.
}

begin
  # Create Custom Event Schema
  result = api_instance.create_custom_event_schema(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_custom_event_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_custom_event_schemas_create_request_body** | [**ManagementProjectsCustomEventSchemasCreateRequestBody**](ManagementProjectsCustomEventSchemasCreateRequestBody.md) | Defines the custom event schema. | [optional] |

### Return type

[**ManagementProjectsCustomEventSchemasCreateResponseBody**](ManagementProjectsCustomEventSchemasCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_metadata_schema

> <ManagementProjectsMetadataSchemasCreateResponseBody> create_metadata_schema(project_id, opts)

Create Metadata Schema

Creates a new metadata (custom attribute) schema. The schema consists of a set of key-value pairs to customize Voucherify resources.  You can nest your object within a standard metadata schema, e.g. within a campaign or customer schema. However, your nested object cannot include another nested object. The standard metadata schemas are: - Campaign - Voucher - Publication - Redemption - Product - Customer - Order - Order line item - Loyalty Tier - Promotion Tier - Earning rule - Reward  📘 Metadata Documentation  Read the Getting Started with Metadata articles to learn how metadata work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_metadata_schemas_create_request_body: VoucherifySdk::ManagementProjectsMetadataSchemasCreateRequestBody.new # ManagementProjectsMetadataSchemasCreateRequestBody | Defines the metadata schema.
}

begin
  # Create Metadata Schema
  result = api_instance.create_metadata_schema(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_metadata_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_metadata_schemas_create_request_body** | [**ManagementProjectsMetadataSchemasCreateRequestBody**](ManagementProjectsMetadataSchemasCreateRequestBody.md) | Defines the metadata schema. | [optional] |

### Return type

[**ManagementProjectsMetadataSchemasCreateResponseBody**](ManagementProjectsMetadataSchemasCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_project

> <ManagementProjectsCreateResponseBody> create_project(opts)

Create Project

Creates a new project. You can add users, specify the cluster, timezone, currency, and other details. All owners are added to the project by default.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
opts = {
  management_projects_create_request_body: VoucherifySdk::ManagementProjectsCreateRequestBody.new # ManagementProjectsCreateRequestBody | Define project details.
}

begin
  # Create Project
  result = api_instance.create_project(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_project: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **management_projects_create_request_body** | [**ManagementProjectsCreateRequestBody**](ManagementProjectsCreateRequestBody.md) | Define project details. | [optional] |

### Return type

[**ManagementProjectsCreateResponseBody**](ManagementProjectsCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_stacking_rules

> <ManagementProjectsStackingRulesCreateResponseBody> create_stacking_rules(project_id, opts)

Create Stacking Rules

Overwrites the default stacking rules. If new stacking rules have been created for the project earlier (e.g. in the user interface), it returns an error. Use Update Stacking Rules endpoint to change the rules.  📘 Stacking Rules Documentation  Read [the Stacking Rules article](https://support.voucherify.io/article/604-stacking-rules) to learn how they work.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_stacking_rules_create_request_body: VoucherifySdk::ManagementProjectsStackingRulesCreateRequestBody.new # ManagementProjectsStackingRulesCreateRequestBody | Defines the stacking rule parameters.
}

begin
  # Create Stacking Rules
  result = api_instance.create_stacking_rules(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_stacking_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_stacking_rules_create_request_body** | [**ManagementProjectsStackingRulesCreateRequestBody**](ManagementProjectsStackingRulesCreateRequestBody.md) | Defines the stacking rule parameters. | [optional] |

### Return type

[**ManagementProjectsStackingRulesCreateResponseBody**](ManagementProjectsStackingRulesCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_webhook

> <ManagementProjectsWebhooksCreateResponseBody> create_webhook(project_id, opts)

Create Webhook

Creates a new webhook configuration.  📘 Webhook Documentation  Read Webhooks v2024-01-01 article to learn how webhooks work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_webhooks_create_request_body: VoucherifySdk::ManagementProjectsWebhooksCreateRequestBody.new # ManagementProjectsWebhooksCreateRequestBody | Defines a webhook configuration.
}

begin
  # Create Webhook
  result = api_instance.create_webhook(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->create_webhook: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_webhooks_create_request_body** | [**ManagementProjectsWebhooksCreateRequestBody**](ManagementProjectsWebhooksCreateRequestBody.md) | Defines a webhook configuration. | [optional] |

### Return type

[**ManagementProjectsWebhooksCreateResponseBody**](ManagementProjectsWebhooksCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_brand

> delete_brand(project_id, branding_id)

Delete Brand

Deletes permanently a brand configuration.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
branding_id = 'branding_id_example' # String | Provide the unique identifier of the brand configuration.

begin
  # Delete Brand
  api_instance.delete_brand(project_id, branding_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_brand: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **branding_id** | **String** | Provide the unique identifier of the brand configuration. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_custom_event_schema

> delete_custom_event_schema(project_id, custom_event_schema_id)

Delete Custom Event Schema

Deletes permanently the custom event schema with its custom properties (metadata).  📘 Custom Event Documentation  Read [Custom Events](https://support.voucherify.io/article/111-custom-events) article to learn how custom events work in Voucherify. Read also the details about the Track Custom Event endpoint and the Custom Event Object.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
custom_event_schema_id = 'custom_event_schema_id_example' # String | Provide the unique identifier of the custom event schema.

begin
  # Delete Custom Event Schema
  api_instance.delete_custom_event_schema(project_id, custom_event_schema_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_custom_event_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **custom_event_schema_id** | **String** | Provide the unique identifier of the custom event schema. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_metadata_schema

> delete_metadata_schema(project_id, metadata_schema_id)

Delete Metadata Schema

Deletes permanently the metadata schema. In standard metadata schemas, this endpoint removes permanently all definitions. The standard metadata schemas are: - Campaign - Voucher - Publication - Redemption - Product - Customer - Order - Order line item - Loyalty Tier - Promotion Tier - Earning rule - Reward If you want to delete only one definition, use the Update Metadata Schema endpoint. In the request, provide the deleted: true pair in the definition object. This definition will be moved to Removed definitions. If you want to create a new standard metadata schema, use the Create Metadata Schema endpoint.  🚧 Metadata Purging This endpoint deletes permanently the metadata schemas only. However, it does not purge the metadata from associated entities, so the metadata added to those entities will remain. If you want to purge metadata from the entities: 1. Remove all the definitions you want to purge. You can do this either in Voucherify Project Settings > Metadata Schema tab or with the Update Metadata Schema endpoint. 2. In Voucherify Project Settings > Metadata Schema tab, go to the relevant metadata schema. 3. In Removed definitions, click the bin button next to the definitions whose metadata you want to purge from entities. Note: - This is an asynchronous action. You will be notified when it has been completed. - You cannot purge metadata for the Redemption and Publication schemas. 4. Use the Delete Metadata Schema request to delete the metadata schema from Voucherify.  📘 Metadata Documentation  Read the Getting Started with Metadata articles to learn how metadata work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
metadata_schema_id = 'metadata_schema_id_example' # String | Provide the unique identifier of the metadata schema.

begin
  # Delete Metadata Schema
  api_instance.delete_metadata_schema(project_id, metadata_schema_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_metadata_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **metadata_schema_id** | **String** | Provide the unique identifier of the metadata schema. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_project

> delete_project(project_id)

Delete Project

Deletes an existing project. The users currently using the deleted project will be automatically logged out.  🚧 Sandbox Project The sandbox project cannot be deleted.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # Delete Project
  api_instance.delete_project(project_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_project: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_stacking_rules

> delete_stacking_rules(project_id, stacking_rules_id)

Delete Stacking Rules

Deletes permanently the current settings for the stacking rules. The stacking rules are restored to default values.  📘 Stacking Rules Documentation  Read [the Stacking Rules article](https://support.voucherify.io/article/604-stacking-rules) to learn how they work.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
stacking_rules_id = 'stacking_rules_id_example' # String | Provide the unique identifier of the stacking rules.

begin
  # Delete Stacking Rules
  api_instance.delete_stacking_rules(project_id, stacking_rules_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_stacking_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **stacking_rules_id** | **String** | Provide the unique identifier of the stacking rules. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_webhook

> delete_webhook(project_id, webhook_id)

Delete Webhook

Deletes a webhook configuration.  📘 Webhook Documentation  Read Webhooks v2024-01-1 article to learn how webhooks work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
webhook_id = 'webhook_id_example' # String | Provide the unique identifier of the webhook configuration.

begin
  # Delete Webhook
  api_instance.delete_webhook(project_id, webhook_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->delete_webhook: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **webhook_id** | **String** | Provide the unique identifier of the webhook configuration. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_brand

> <ManagementProjectsBrandingGetResponseBody> get_brand(project_id, branding_id)

Get Brand

Retrieves a brand configuration.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
branding_id = 'branding_id_example' # String | Provide the unique identifier of the brand configuration.

begin
  # Get Brand
  result = api_instance.get_brand(project_id, branding_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_brand: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **branding_id** | **String** | Provide the unique identifier of the brand configuration. |  |

### Return type

[**ManagementProjectsBrandingGetResponseBody**](ManagementProjectsBrandingGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_event_schema

> <ManagementProjectsCustomEventSchemasGetResponseBody> get_custom_event_schema(project_id, custom_event_schema_id)

Get Custom Event Schema

Retrieves a custom event schema.  📘 Custom Event Documentation  Read [Custom Events](https://support.voucherify.io/article/111-custom-events) article to learn how custom events work in Voucherify. Read also the details about the Track Custom Event endpoint and the Custom Event Object.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
custom_event_schema_id = 'custom_event_schema_id_example' # String | Provide the unique identifier of the custom event schema.

begin
  # Get Custom Event Schema
  result = api_instance.get_custom_event_schema(project_id, custom_event_schema_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_custom_event_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **custom_event_schema_id** | **String** | Provide the unique identifier of the custom event schema. |  |

### Return type

[**ManagementProjectsCustomEventSchemasGetResponseBody**](ManagementProjectsCustomEventSchemasGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metadata_schema1

> <ManagementProjectsMetadataSchemasGetResponseBody> get_metadata_schema1(project_id, metadata_schema_id)

Get Metadata Schema

Retrieves a metadata schema.  📘 Metadata Documentation  Read the Getting Started with Metadata articles to learn how metadata work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
metadata_schema_id = 'metadata_schema_id_example' # String | Provide the unique identifier of the metadata schema.

begin
  # Get Metadata Schema
  result = api_instance.get_metadata_schema1(project_id, metadata_schema_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_metadata_schema1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **metadata_schema_id** | **String** | Provide the unique identifier of the metadata schema. |  |

### Return type

[**ManagementProjectsMetadataSchemasGetResponseBody**](ManagementProjectsMetadataSchemasGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <ManagementProjectsGetResponseBody> get_project(project_id)

Get Project

Retrieves an existing project.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # Get Project
  result = api_instance.get_project(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_project: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsGetResponseBody**](ManagementProjectsGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stacking_rules

> <ManagementProjectsStackingRulesGetResponseBody> get_stacking_rules(project_id, stacking_rules_id)

Get Stacking Rules

Retrieves the stacking rules for the project.  📘 Stacking Rules Documentation  Read [the Stacking Rules article](https://support.voucherify.io/article/604-stacking-rules) to learn how they work.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
stacking_rules_id = 'stacking_rules_id_example' # String | Provide the unique identifier of the stacking rules.

begin
  # Get Stacking Rules
  result = api_instance.get_stacking_rules(project_id, stacking_rules_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_stacking_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **stacking_rules_id** | **String** | Provide the unique identifier of the stacking rules. |  |

### Return type

[**ManagementProjectsStackingRulesGetResponseBody**](ManagementProjectsStackingRulesGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <ManagementProjectsUsersGetUserResponseBody> get_user(project_id, user_id)

Get User

Retrieves the project users details.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
user_id = 'user_id_example' # String | Provide the unique identifier of the user. Alternatively, provide the users login.

begin
  # Get User
  result = api_instance.get_user(project_id, user_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_user: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **user_id** | **String** | Provide the unique identifier of the user. Alternatively, provide the users login. |  |

### Return type

[**ManagementProjectsUsersGetUserResponseBody**](ManagementProjectsUsersGetUserResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <ManagementProjectsWebhooksGetResponseBody> get_webhook(project_id, webhook_id)

Get Webhook

Retrieves a webhook configuration.  📘 Webhook Documentation  Read Webhooks v2024-01-1 article to learn how webhooks work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
webhook_id = 'webhook_id_example' # String | Provide the unique identifier of the webhook configuration.

begin
  # Get Webhook
  result = api_instance.get_webhook(project_id, webhook_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->get_webhook: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **webhook_id** | **String** | Provide the unique identifier of the webhook configuration. |  |

### Return type

[**ManagementProjectsWebhooksGetResponseBody**](ManagementProjectsWebhooksGetResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_user

> invite_user(opts)

Invite a New User

Sends an invitation to an email address that has not been used yet as a Voucherify user login. You can specify the projects to which the invited user will be assigned and define their roles.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
opts = {
  management_projects_users_invite_create_request_body: VoucherifySdk::ManagementProjectsUsersInviteCreateRequestBody.new # ManagementProjectsUsersInviteCreateRequestBody | Defines the details of the invitation, the project, and roles to which the user will be assigned.
}

begin
  # Invite a New User
  api_instance.invite_user(opts)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->invite_user: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **management_projects_users_invite_create_request_body** | [**ManagementProjectsUsersInviteCreateRequestBody**](ManagementProjectsUsersInviteCreateRequestBody.md) | Defines the details of the invitation, the project, and roles to which the user will be assigned. | [optional] |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## list_brands

> <ManagementProjectsBrandingListResponseBody> list_brands(project_id)

List Brands

Lists all brand configurations. Because a project can have only one brand, it always returns a list with one item. This endpoint can be used to retrieve the brand configuration created with the Voucherify Dashboard and the ID.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Brands
  result = api_instance.list_brands(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_brands: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsBrandingListResponseBody**](ManagementProjectsBrandingListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_event_schemas

> <ManagementProjectsCustomEventSchemasListResponseBody> list_custom_event_schemas(project_id)

List Custom Event Schemas

Lists all custom event schemas available in the project.  📘 Custom Event Documentation  Read [Custom Events](https://support.voucherify.io/article/111-custom-events) article to learn how custom events work in Voucherify. Read also the details about the Track Custom Event endpoint and the Custom Event Object.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Custom Event Schemas
  result = api_instance.list_custom_event_schemas(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_custom_event_schemas: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsCustomEventSchemasListResponseBody**](ManagementProjectsCustomEventSchemasListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_metadata_schemas1

> <ManagementProjectsMetadataSchemasListResponseBody> list_metadata_schemas1(project_id)

List Metadata Schemas

Lists all metadata schemas available in the project.  📘 Metadata Documentation  Read the Getting Started with Metadata articles to learn how metadata work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Metadata Schemas
  result = api_instance.list_metadata_schemas1(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_metadata_schemas1: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsMetadataSchemasListResponseBody**](ManagementProjectsMetadataSchemasListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_projects

> <ManagementProjectsListResponseBody> list_projects

List Projects

Lists all projects for the organization. The endpoint does not require any query parameters.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new

begin
  # List Projects
  result = api_instance.list_projects
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_projects: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ManagementProjectsListResponseBody**](ManagementProjectsListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_stacking_rules

> <ManagementProjectsStackingRulesListResponseBody> list_stacking_rules(project_id)

List Stacking Rules

Lists all stacking rules. Returns always a list with one item. This endpoint can be used to retrieve the default stacking rules. The default stacking rules do not have an ID that could be used with the Get Stacking Rules or Update Stacking Rules endpoints.  📘 Stacking Rules Documentation  Read [the Stacking Rules article](https://support.voucherify.io/article/604-stacking-rules) to learn how they work.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Stacking Rules
  result = api_instance.list_stacking_rules(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_stacking_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsStackingRulesListResponseBody**](ManagementProjectsStackingRulesListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ManagementProjectsUsersListResponseBody> list_users(project_id)

List Users

Lists all users assigned to the project.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Users
  result = api_instance.list_users(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_users: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsUsersListResponseBody**](ManagementProjectsUsersListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> <ManagementProjectsWebhooksListResponseBody> list_webhooks(project_id)

List Webhooks

Lists all webhook configurations for the project.  📘 Webhook Documentation  Read Webhooks v2024-01-1 article to learn how webhooks work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.

begin
  # List Webhooks
  result = api_instance.list_webhooks(project_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->list_webhooks: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |

### Return type

[**ManagementProjectsWebhooksListResponseBody**](ManagementProjectsWebhooksListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## management_copy_campaign_template

> <ManagementProjectsTemplatesCampaignsCopyCreateResponseBody> management_copy_campaign_template(project_id, campaign_template_id, opts)

Copy Campaign Template to a Project

Copies a campaign template to another project. The resources, like validation rules or products, will not be copied to the destination project yet. When the template is used to create a new campaign or add a new promotion tier, the resources will be created in the destination project.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
campaign_template_id = 'campaign_template_id_example' # String | Provide the unique identifier of the campaign template.
opts = {
  management_projects_templates_campaigns_copy_create_request_body: VoucherifySdk::ManagementProjectsTemplatesCampaignsCopyCreateRequestBody.new # ManagementProjectsTemplatesCampaignsCopyCreateRequestBody | Determines the details about the template in the destination project as well as the destination project itself.
}

begin
  # Copy Campaign Template to a Project
  result = api_instance.management_copy_campaign_template(project_id, campaign_template_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->management_copy_campaign_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **campaign_template_id** | **String** | Provide the unique identifier of the campaign template. |  |
| **management_projects_templates_campaigns_copy_create_request_body** | [**ManagementProjectsTemplatesCampaignsCopyCreateRequestBody**](ManagementProjectsTemplatesCampaignsCopyCreateRequestBody.md) | Determines the details about the template in the destination project as well as the destination project itself. | [optional] |

### Return type

[**ManagementProjectsTemplatesCampaignsCopyCreateResponseBody**](ManagementProjectsTemplatesCampaignsCopyCreateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## management_list_campaign_templates

> <ManagementProjectsTemplatesCampaignsListResponseBody> management_list_campaign_templates(project_id, opts)

List Campaign Templates

Lists all campaign templates available in the project.  👍 List Campaign Templates  This endpoint works in the same way as the List Campaign Templates endpoint.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the campaign templates created after a template with the given ID.
  order: VoucherifySdk::ParameterTemplatesList::ID, # ParameterTemplatesList | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  include_total: true, # Boolean | If set to true, the response returns the number of all campaign templates, regardless of the applied filters or limits. Set to false by default.
  filters: VoucherifySdk::ParameterFiltersListTemplates.new # ParameterFiltersListTemplates | Filters for listing templates.
}

begin
  # List Campaign Templates
  result = api_instance.management_list_campaign_templates(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->management_list_campaign_templates: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the campaign templates created after a template with the given ID. | [optional] |
| **order** | [**ParameterTemplatesList**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **include_total** | **Boolean** | If set to true, the response returns the number of all campaign templates, regardless of the applied filters or limits. Set to false by default. | [optional] |
| **filters** | [**ParameterFiltersListTemplates**](.md) | Filters for listing templates. | [optional] |

### Return type

[**ManagementProjectsTemplatesCampaignsListResponseBody**](ManagementProjectsTemplatesCampaignsListResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unassign_user

> unassign_user(project_id, user_id)

Unassign User

Unassigns the user from the project. If the user is currently logged in, they are automatically logged out. If the user is assigned to only one project, they cannot be unassigned from that project.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
user_id = 'user_id_example' # String | Provide the unique identifier of the user. Alternatively, provide the users login.

begin
  # Unassign User
  api_instance.unassign_user(project_id, user_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->unassign_user: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **user_id** | **String** | Provide the unique identifier of the user. Alternatively, provide the users login. |  |

### Return type

nil (empty response body)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_brand

> <ManagementProjectsBrandingUpdateResponseBody> update_brand(project_id, branding_id, opts)

Update Brand

Updates a brand configuration. Only the fields sent in the request will be updated. The fields omitted in the request will remain unchanged.  📘 White Labelling  The white labelling settings which can be found in Project Settings > Brand Details and which are available only for Enterprise clients as a separate service can be configured only in the user interface.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
branding_id = 'branding_id_example' # String | Provide the unique identifier of the brand configuration.
opts = {
  management_projects_branding_update_request_body: VoucherifySdk::ManagementProjectsBrandingUpdateRequestBody.new # ManagementProjectsBrandingUpdateRequestBody | Defines the brand configuration to be updated.
}

begin
  # Update Brand
  result = api_instance.update_brand(project_id, branding_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_brand: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **branding_id** | **String** | Provide the unique identifier of the brand configuration. |  |
| **management_projects_branding_update_request_body** | [**ManagementProjectsBrandingUpdateRequestBody**](ManagementProjectsBrandingUpdateRequestBody.md) | Defines the brand configuration to be updated. | [optional] |

### Return type

[**ManagementProjectsBrandingUpdateResponseBody**](ManagementProjectsBrandingUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_custom_event_schema

> <ManagementProjectsCustomEventSchemasUpdateResponseBody> update_custom_event_schema(project_id, custom_event_schema_id, opts)

Update Custom Event Schema

Updates a custom event schema. With this request, you can: - Add a non-existing property to a custom event schema. - Update an existing property. In the request, you can provide only those properties you want to add or update. Definitions omitted in the request remain unchanged.  👍 Additional Notes - You can change the type of an existing property, e.g. from string to number. - You can remove a custom property with this endpoint by providing deleted: true in the request. However, you cannot permanently remove an event definition or its property with this endpoint.  📘 Custom Event Documentation  Read [Custom Events](https://support.voucherify.io/article/111-custom-events) article to learn how custom events work in Voucherify. Read also the details about the Track Custom Event endpoint and the Custom Event Object.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
custom_event_schema_id = 'custom_event_schema_id_example' # String | Provide the unique identifier of the custom event schema.
opts = {
  management_projects_custom_event_schemas_update_request_body: VoucherifySdk::ManagementProjectsCustomEventSchemasUpdateRequestBody.new # ManagementProjectsCustomEventSchemasUpdateRequestBody | Defines the custom event schema to be updated.
}

begin
  # Update Custom Event Schema
  result = api_instance.update_custom_event_schema(project_id, custom_event_schema_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_custom_event_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **custom_event_schema_id** | **String** | Provide the unique identifier of the custom event schema. |  |
| **management_projects_custom_event_schemas_update_request_body** | [**ManagementProjectsCustomEventSchemasUpdateRequestBody**](ManagementProjectsCustomEventSchemasUpdateRequestBody.md) | Defines the custom event schema to be updated. | [optional] |

### Return type

[**ManagementProjectsCustomEventSchemasUpdateResponseBody**](ManagementProjectsCustomEventSchemasUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_metadata_schema

> <ManagementProjectsMetadataSchemasUpdateResponseBody> update_metadata_schema(project_id, metadata_schema_id, opts)

Update Metadata Schema

Updates a metadata schema. With this request, you can: - Add a non-existing attribute definition to the metadata schema. - Update an existing attribute definition by overwriting its current values. In the request, you can provide only those definitions you want to add or update. Definitions omitted in the request remain unchanged. However, if you want to update a definition, you will have to add all its current key-value pairs as well. Only the pairs sent in the request are saved for this definition. This means that the key-value pairs that are not sent in a request are restored to default values. For example, if your definition has an array with values and it is not sent in an update request, the array values will be deleted.  👍 Additional Notes - You cannot change the type of an existing schema, e.g. from string to number. - You can remove a definition with this endpoint by providing deleted: true in the request. It will be moved to the Removed definitions section in the user interface. However, you cannot permanently remove a definition with this endpoint.  📘 Metadata Documentation  Read the Getting Started with Metadata articles to learn how metadata work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
metadata_schema_id = 'metadata_schema_id_example' # String | Provide the unique identifier of the metadata schema.
opts = {
  management_projects_metadata_schemas_update_request_body: VoucherifySdk::ManagementProjectsMetadataSchemasUpdateRequestBody.new # ManagementProjectsMetadataSchemasUpdateRequestBody | Defines the metadata schema to be updated.
}

begin
  # Update Metadata Schema
  result = api_instance.update_metadata_schema(project_id, metadata_schema_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_metadata_schema: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **metadata_schema_id** | **String** | Provide the unique identifier of the metadata schema. |  |
| **management_projects_metadata_schemas_update_request_body** | [**ManagementProjectsMetadataSchemasUpdateRequestBody**](ManagementProjectsMetadataSchemasUpdateRequestBody.md) | Defines the metadata schema to be updated. | [optional] |

### Return type

[**ManagementProjectsMetadataSchemasUpdateResponseBody**](ManagementProjectsMetadataSchemasUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_project

> <ManagementProjectsUpdateResponseBody> update_project(project_id, opts)

Update Project

Updates an existing project. You can add or modify settings for timezone, currency, notifications, and other details. Only the fields sent in the request will be updated.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
opts = {
  management_projects_update_request_body: VoucherifySdk::ManagementProjectsUpdateRequestBody.new # ManagementProjectsUpdateRequestBody | Define the project details to be updated.
}

begin
  # Update Project
  result = api_instance.update_project(project_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_project: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **management_projects_update_request_body** | [**ManagementProjectsUpdateRequestBody**](ManagementProjectsUpdateRequestBody.md) | Define the project details to be updated. | [optional] |

### Return type

[**ManagementProjectsUpdateResponseBody**](ManagementProjectsUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_stacking_rules

> <ManagementProjectsStackingRulesUpdateResponseBody> update_stacking_rules(project_id, stacking_rules_id, opts)

Update Stacking Rules

Updates the stacking rules. Only the provided fields will be updated. However, if you update an array, the content of the array is overwritten. This means that if you want to add new values to an array and retain existing ones, you need to provide both the existing and new values in the request.  📘 Stacking Rules Documentation  Read [the Stacking Rules article](https://support.voucherify.io/article/604-stacking-rules) to learn how they work.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
stacking_rules_id = 'stacking_rules_id_example' # String | Provide the unique identifier of the stacking rules.
opts = {
  management_projects_stacking_rules_update_request_body: VoucherifySdk::ManagementProjectsStackingRulesUpdateRequestBody.new # ManagementProjectsStackingRulesUpdateRequestBody | Defines the stacking rules to be updated.
}

begin
  # Update Stacking Rules
  result = api_instance.update_stacking_rules(project_id, stacking_rules_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_stacking_rules: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **stacking_rules_id** | **String** | Provide the unique identifier of the stacking rules. |  |
| **management_projects_stacking_rules_update_request_body** | [**ManagementProjectsStackingRulesUpdateRequestBody**](ManagementProjectsStackingRulesUpdateRequestBody.md) | Defines the stacking rules to be updated. | [optional] |

### Return type

[**ManagementProjectsStackingRulesUpdateResponseBody**](ManagementProjectsStackingRulesUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <ManagementProjectsUsersUpdateRoleResponseBody> update_user(project_id, user_id, opts)

Update User

Updates the users role.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
user_id = 'user_id_example' # String | Provide the unique identifier of the user. Alternatively, provide the users login.
opts = {
  management_projects_users_update_role_request_body: VoucherifySdk::ManagementProjectsUsersUpdateRoleRequestBody.new # ManagementProjectsUsersUpdateRoleRequestBody | Defines the users new role.
}

begin
  # Update User
  result = api_instance.update_user(project_id, user_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_user: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **user_id** | **String** | Provide the unique identifier of the user. Alternatively, provide the users login. |  |
| **management_projects_users_update_role_request_body** | [**ManagementProjectsUsersUpdateRoleRequestBody**](ManagementProjectsUsersUpdateRoleRequestBody.md) | Defines the users new role. | [optional] |

### Return type

[**ManagementProjectsUsersUpdateRoleResponseBody**](ManagementProjectsUsersUpdateRoleResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_webhook

> <ManagementProjectsWebhooksUpdateResponseBody> update_webhook(project_id, webhook_id, opts)

Update Webhook

Updates a webhook configuration. The events listed in the request are overwritten. If you want to add more events, provide also the events that are already in the webhook configuration.  📘 Webhook Documentation  Read Webhooks v2024-01-1 article to learn how webhooks work in Voucherify.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-Management-Token
  config.api_key['X-Management-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Token'] = 'Bearer'

  # Configure API key authorization: X-Management-Id
  config.api_key['X-Management-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Management-Id'] = 'Bearer'
end

api_instance = VoucherifySdk::ManagementApi.new
project_id = 'project_id_example' # String | Provide the unique identifier of the project.
webhook_id = 'webhook_id_example' # String | Provide the unique identifier of the webhook configuration.
opts = {
  management_projects_webhooks_update_request_body: VoucherifySdk::ManagementProjectsWebhooksUpdateRequestBody.new # ManagementProjectsWebhooksUpdateRequestBody | Defines the webhook configuration to be updated.
}

begin
  # Update Webhook
  result = api_instance.update_webhook(project_id, webhook_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling ManagementApi->update_webhook: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** | Provide the unique identifier of the project. |  |
| **webhook_id** | **String** | Provide the unique identifier of the webhook configuration. |  |
| **management_projects_webhooks_update_request_body** | [**ManagementProjectsWebhooksUpdateRequestBody**](ManagementProjectsWebhooksUpdateRequestBody.md) | Defines the webhook configuration to be updated. | [optional] |

### Return type

[**ManagementProjectsWebhooksUpdateResponseBody**](ManagementProjectsWebhooksUpdateResponseBody.md)

### Authorization

[X-Management-Token](../README.md#X-Management-Token), [X-Management-Id](../README.md#X-Management-Id)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

