# VoucherifySdk::TemplatesApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_tier_from_template**](TemplatesApi.md#add_tier_from_template) | **POST** /v1/templates/campaigns/{campaignTemplateId}/tier-setup | Add Promotion Tier From Template |
| [**create_campaign_from_template**](TemplatesApi.md#create_campaign_from_template) | **POST** /v1/templates/campaigns/{campaignTemplateId}/campaign-setup | Create Campaign From Template |
| [**create_campaign_template**](TemplatesApi.md#create_campaign_template) | **POST** /v1/templates/campaigns | Create Campaign Template |
| [**delete_campaign_template**](TemplatesApi.md#delete_campaign_template) | **DELETE** /v1/templates/campaigns/{campaignTemplateId} | Delete Campaign Template |
| [**get_campaign_template**](TemplatesApi.md#get_campaign_template) | **GET** /v1/templates/campaigns/{campaignTemplateId} | Get Campaign Template |
| [**list_campaign_templates**](TemplatesApi.md#list_campaign_templates) | **GET** /v1/templates/campaigns | List Campaign Templates |
| [**update_campaign_template**](TemplatesApi.md#update_campaign_template) | **PUT** /v1/templates/campaigns/{campaignTemplateId} | Update Campaign Template |


## add_tier_from_template

> <TemplatesCampaignsTierSetupCreateResponseBody> add_tier_from_template(campaign_template_id, opts)

Add Promotion Tier From Template

Creates a promotion tier out of a discount campaign template and adds it to an existing promotion campaign. To add a promotion tier to a campaign, you need to provide the name in the request and the campaign ID. Other fields are optional. If no other fields are sent, the configuration from the template will be used. You can send new values of the fields listed below to replace the settings saved in the template. However, you cannot assign an action or an existing validation rule or create a new one in the request. If the template has a validation rule, a new validation rule is always created for the promotion tier. When the promotion tier has been created, then you can: - Update the validation rule, - Unassign the validation rule, - Assign an existing validation rule.  👍 Promotion Tiers and Campaign Templates You can create a campaign template out of a promotion tier. Promotion tiers are converted to a discount campaign with the DISCOUNT_COUPON type. You can use this template to create: - Discount campaign - Promotion tier  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
campaign_template_id = 'campaign_template_id_example' # String | Pass the campaign template ID that was assigned by Voucherify.
opts = {
  templates_campaigns_tier_setup_create_request_body: VoucherifySdk::TemplatesCampaignsTierSetupCreateRequestBody.new # TemplatesCampaignsTierSetupCreateRequestBody | Only name and campaign_id are required. The rest of the fields will overwrite the template configuration.
}

begin
  # Add Promotion Tier From Template
  result = api_instance.add_tier_from_template(campaign_template_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->add_tier_from_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_template_id** | **String** | Pass the campaign template ID that was assigned by Voucherify. |  |
| **templates_campaigns_tier_setup_create_request_body** | [**TemplatesCampaignsTierSetupCreateRequestBody**](TemplatesCampaignsTierSetupCreateRequestBody.md) | Only name and campaign_id are required. The rest of the fields will overwrite the template configuration. | [optional] |

### Return type

[**TemplatesCampaignsTierSetupCreateResponseBody**](TemplatesCampaignsTierSetupCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_campaign_from_template

> <TemplatesCampaignsCampaignSetupCreateResponseBody> create_campaign_from_template(campaign_template_id, opts)

Create Campaign From Template

Creates a campaign out of a campaign template. To create a campaign, you need to provide the name in the request, while other fields are optional. If no other fields are sent, the configuration from the template will be used. You can send new values of the fields listed below to replace the settings saved in the template. However, you cannot assign an existing validation rule or create a new one in the request. If the template has a validation rule, a new validation rule is always created for the campaign. When the campaign has been created, then you can: - Update the validation rule, - Unassign the validation rule, - Assign an existing validation rule.  👍 Promotion Tiers and Campaign Templates You can create a campaign template out of a promotion tier. Promotion tiers are converted to a discount campaign with the DISCOUNT_COUPON type. You can use this template to create: - Discount campaign - Promotion tier  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
campaign_template_id = 'campaign_template_id_example' # String | Pass the campaign template ID that was assigned by Voucherify.
opts = {
  templates_campaigns_campaign_setup_create_request_body: VoucherifySdk::TemplatesCampaignsCampaignSetupCreateRequestBody.new # TemplatesCampaignsCampaignSetupCreateRequestBody | Only name is required. The rest of the fields will overwrite the template configuration.
}

begin
  # Create Campaign From Template
  result = api_instance.create_campaign_from_template(campaign_template_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->create_campaign_from_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_template_id** | **String** | Pass the campaign template ID that was assigned by Voucherify. |  |
| **templates_campaigns_campaign_setup_create_request_body** | [**TemplatesCampaignsCampaignSetupCreateRequestBody**](TemplatesCampaignsCampaignSetupCreateRequestBody.md) | Only name is required. The rest of the fields will overwrite the template configuration. | [optional] |

### Return type

[**TemplatesCampaignsCampaignSetupCreateResponseBody**](TemplatesCampaignsCampaignSetupCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_campaign_template

> <TemplatesCampaignsCreateTemplateResponseBody> create_campaign_template(opts)

Create Campaign Template

Creates a template for a discount or gift campaign, or a promotion tier. A template stores campaign configuration **without** the following details: - Campaign name - Category - Code count The following elements are not supported by campaign templates: - Redeeming API keys - Redeeming users - Customer loyalty tier - Static segments  👍 Promotion Tiers and Campaign Templates You can create a campaign template out of a promotion tier. Promotion tiers are converted to a discount campaign with the DISCOUNT_COUPON type. You can use this template to create: - Discount campaign, - Promotion tier.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
opts = {
  templates_campaigns_create_request_body: VoucherifySdk::TemplatesCampaignsCreateRequestBody.new # TemplatesCampaignsCreateRequestBody | Provide details for a campaign template
}

begin
  # Create Campaign Template
  result = api_instance.create_campaign_template(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->create_campaign_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates_campaigns_create_request_body** | [**TemplatesCampaignsCreateRequestBody**](TemplatesCampaignsCreateRequestBody.md) | Provide details for a campaign template | [optional] |

### Return type

[**TemplatesCampaignsCreateTemplateResponseBody**](TemplatesCampaignsCreateTemplateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_campaign_template

> delete_campaign_template(campaign_template_id)

Delete Campaign Template

Deletes the campaign template permanently.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
campaign_template_id = 'campaign_template_id_example' # String | Pass the campaign template ID that was assigned by Voucherify.

begin
  # Delete Campaign Template
  api_instance.delete_campaign_template(campaign_template_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->delete_campaign_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_template_id** | **String** | Pass the campaign template ID that was assigned by Voucherify. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_campaign_template

> <TemplatesCampaignsGetResponseBody> get_campaign_template(campaign_template_id)

Get Campaign Template

Retrieves a campaign template available in the project.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
campaign_template_id = 'campaign_template_id_example' # String | Pass the campaign template ID that was assigned by Voucherify.

begin
  # Get Campaign Template
  result = api_instance.get_campaign_template(campaign_template_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->get_campaign_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_template_id** | **String** | Pass the campaign template ID that was assigned by Voucherify. |  |

### Return type

[**TemplatesCampaignsGetResponseBody**](TemplatesCampaignsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_campaign_templates

> <TemplatesCampaignsListResponseBody> list_campaign_templates(opts)

List Campaign Templates

Lists all campaign templates available in the project.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the campaign templates created after a template with the given ID.
  order: VoucherifySdk::ParameterTemplatesList::ID, # ParameterTemplatesList | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  include_total: true, # Boolean | If set to true, the response returns the number of all campaign templates, regardless of the applied filters or limits. Set to false by default.
  filters: VoucherifySdk::ParameterFiltersListTemplates.new # ParameterFiltersListTemplates | Filters for listing templates.
}

begin
  # List Campaign Templates
  result = api_instance.list_campaign_templates(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->list_campaign_templates: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the campaign templates created after a template with the given ID. | [optional] |
| **order** | [**ParameterTemplatesList**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **include_total** | **Boolean** | If set to true, the response returns the number of all campaign templates, regardless of the applied filters or limits. Set to false by default. | [optional] |
| **filters** | [**ParameterFiltersListTemplates**](.md) | Filters for listing templates. | [optional] |

### Return type

[**TemplatesCampaignsListResponseBody**](TemplatesCampaignsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_campaign_template

> <TemplatesCampaignsUpdateResponseBody> update_campaign_template(campaign_template_id, opts)

Update Campaign Template

Updates the name or description of the campaign template.  📘 Campaign Templates – Documentation Read the [Campaign Templates documentation](https://support.voucherify.io/article/620-campaign-templates) to learn more about this feature.

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

api_instance = VoucherifySdk::TemplatesApi.new
campaign_template_id = 'campaign_template_id_example' # String | Pass the campaign template ID that was assigned by Voucherify.
opts = {
  templates_campaigns_update_request_body: VoucherifySdk::TemplatesCampaignsUpdateRequestBody.new # TemplatesCampaignsUpdateRequestBody | Provide the new name or description for the campaign template
}

begin
  # Update Campaign Template
  result = api_instance.update_campaign_template(campaign_template_id, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling TemplatesApi->update_campaign_template: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_template_id** | **String** | Pass the campaign template ID that was assigned by Voucherify. |  |
| **templates_campaigns_update_request_body** | [**TemplatesCampaignsUpdateRequestBody**](TemplatesCampaignsUpdateRequestBody.md) | Provide the new name or description for the campaign template | [optional] |

### Return type

[**TemplatesCampaignsUpdateResponseBody**](TemplatesCampaignsUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

