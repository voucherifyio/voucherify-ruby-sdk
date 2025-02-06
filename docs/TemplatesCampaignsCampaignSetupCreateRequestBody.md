# VoucherifySdk::TemplatesCampaignsCampaignSetupCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Campaign name. | [optional] |
| **description** | **String** | An optional field to keep any extra textual information about the campaign such as a campaign description and details. | [optional] |
| **type** | **String** | Defines whether the campaign can be updated with new vouchers after campaign creation or if the campaign consists of standalone vouchers.  - &#x60;AUTO_UPDATE&#x60;: the campaign is dynamic, i.e. vouchers will generate based on set criteria -  &#x60;STATIC&#x60;: vouchers need to be manually published | [optional] |
| **join_once** | **Boolean** | If this value is set to &#x60;true&#x60;, customers will be able to join the campaign only once. | [optional] |
| **auto_join** | **Boolean** | Indicates whether customers will be able to auto-join a loyalty campaign if any earning rule is fulfilled. | [optional] |
| **use_voucher_metadata_schema** | **Boolean** | Flag indicating whether the campaign is to use the voucher&#39;s metadata schema instead of the campaign metadata schema. | [optional] |
| **vouchers_count** | **Integer** | Total number of unique vouchers in campaign (size of campaign). | [optional] |
| **start_date** | **Time** | Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **activity_duration_after_publishing** | **String** | Defines the amount of time the vouchers will be active after publishing. The value is shown in the ISO 8601 format. For example, a voucher with the value of P24D will be valid for a duration of 24 days. | [optional] |
| **category_id** | **String** | Unique category ID that this campaign belongs to. Either pass this parameter OR the &#x60;category&#x60;. | [optional] |
| **category** | **String** | The category assigned to the campaign. Either pass this parameter OR the &#x60;category_id&#x60;. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the campaign. A set of key/value pairs that you can attach to a campaign object. It can be useful for storing additional information about the campaign in a structured format. | [optional] |
| **access_settings** | [**AccessSettings**](AccessSettings.md) |  | [optional] |
| **voucher** | [**TemplatesCampaignsCampaignSetupCreateRequestBodyVoucher**](TemplatesCampaignsCampaignSetupCreateRequestBodyVoucher.md) |  | [optional] |

