# VoucherifySdk::CampaignsUpdateGiveawayCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**CampaignBaseValidityTimeframe**](CampaignBaseValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the campaign is valid.  - &#x60;0&#x60;  Sunday   - &#x60;1&#x60;  Monday   - &#x60;2&#x60;  Tuesday   - &#x60;3&#x60;  Wednesday   - &#x60;4&#x60;  Thursday   - &#x60;5&#x60;  Friday   - &#x60;6&#x60;  Saturday   | [optional] |
| **description** | **String** | An optional field to keep any extra textual information about the campaign such as a campaign description and details. | [optional] |
| **category** | **String** | The category assigned to the campaign. Either pass this parameter OR the &#x60;category_id&#x60;. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the campaign. A set of key/value pairs that you can attach to a campaign object. It can be useful for storing additional information about the campaign in a structured format. | [optional] |
| **unset_metadata_fields** | **Array&lt;String&gt;** | Determine which metadata should be removed from campaign. | [optional] |
| **category_id** | **String** | Unique category ID that this campaign belongs to. Either pass this parameter OR the &#x60;category&#x60;. | [optional] |
| **activity_duration_after_publishing** | **String** | Defines the amount of time the campaign will be active in ISO 8601 format after publishing. For example, a campaign with a &#x60;duration&#x60; of &#x60;P24D&#x60; will be valid for a duration of 24 days. | [optional] |
| **join_once** | **Boolean** | If this value is set to &#x60;true&#x60;, customers will be able to join the campaign only once. | [optional] |
| **auto_join** | **Boolean** | Indicates whether customers will be able to auto-join a loyalty campaign if any earning rule is fulfilled. | [optional] |
| **type** | **String** | Defines whether the campaign can be updated with new vouchers after campaign creation.      - &#x60;AUTO_UPDATE&#x60;: By choosing the auto update option you will create a campaign that can be enhanced by new vouchers after the time of creation (e.g. by publish vouchers method).     -  &#x60;STATIC&#x60;: vouchers need to be manually published. | [optional] |
| **winners_count** | **String** | It represents the total number of winners in a lucky draw. | [optional] |
| **unique_winners_per_draw** | **String** | It indicates whether each winner in a draw is unique or not. | [optional] |
| **unique_winners** | **String** | Specifies whether each participant can win only once across multiple draws. | [optional] |

