# VoucherifySdk::SimpleCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Campaign name. | [optional] |
| **name** | **String** | Campaign name. | [optional] |
| **campaign_type** | **String** | Type of campaign. | [optional] |
| **type** | **String** | Defines whether the campaign can be updated with new vouchers after campaign creation. - &#x60;AUTO_UPDATE&#x60;: By choosing the auto update option you will create a campaign that can be enhanced by new vouchers after the time of creation (e.g. by publish vouchers method). -  &#x60;STATIC&#x60;: vouchers need to be manually published. | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |
| **voucher** | **Object** |  | [optional] |
| **lucky_draw** | **Object** |  | [optional] |
| **referral_program** | [**ReferralProgram**](ReferralProgram.md) |  | [optional] |
| **auto_join** | **Boolean** | Indicates whether customers will be able to auto-join a loyalty campaign if any earning rule is fulfilled. | [optional] |
| **join_once** | **Boolean** | If this value is set to &#x60;true&#x60;, customers will be able to join the campaign only once. | [optional] |
| **active** | **Boolean** | Indicates whether campaign is active | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the campaign was created in ISO 8601 format. | [optional] |
| **object** | **String** | The type of object represented by JSON. This object stores information about the campaign. | [optional][default to &#39;campaign&#39;] |

