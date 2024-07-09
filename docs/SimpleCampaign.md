# VoucherifySdk::SimpleCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Campaign ID. | [optional] |
| **name** | **String** | Campaign name. | [optional] |
| **campaign_type** | **String** | Type of campaign. | [optional] |
| **type** | **String** | Defines whether the campaign can be updated with new vouchers after campaign creation. - &#x60;AUTO_UPDATE&#x60;: By choosing the auto update option you will create a campaign that can be enhanced by new vouchers after the time of creation (e.g. by publish vouchers method). -  &#x60;STATIC&#x60;: vouchers need to be manually published. | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |
| **voucher** | [**SimpleCampaignVoucher**](SimpleCampaignVoucher.md) |  | [optional] |
| **lucky_draw** | [**SimpleCampaignLuckyDraw**](SimpleCampaignLuckyDraw.md) |  | [optional] |
| **referral_program** | [**ReferralProgram**](ReferralProgram.md) |  | [optional] |
| **auto_join** | **Boolean** | Indicates whether customers will be able to auto-join the campaign if any earning rule is fulfilled. | [optional] |
| **join_once** | **Boolean** | If this value is set to &#x60;true&#x60;, customers will be able to join the campaign only once. | [optional] |
| **active** | **Boolean** | Indicates whether the campaign is active. | [optional] |
| **category** | **String** | Unique category name. | [optional] |
| **category_id** | **String** | The unique category ID that this campaign belongs to. | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Contains details about the category. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a campaign. The metadata object stores all custom attributes assigned to the campaign. | [optional] |
| **start_date** | **Time** | Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is inactive *before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is inactive *after* this date. | [optional] |
| **description** | **String** | An optional field to keep extra textual information about the campaign such as a campaign description and details. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the campaign was created. Timestamp is presented in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the campaign was updated in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the campaign. | [optional][default to &#39;campaign&#39;] |

