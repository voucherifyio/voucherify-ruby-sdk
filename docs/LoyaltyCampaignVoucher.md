# VoucherifySdk::LoyaltyCampaignVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of voucher. | [optional][default to &#39;LOYALTY_CARD&#39;] |
| **loyalty_card** | [**CampaignLoyaltyCard**](CampaignLoyaltyCard.md) |  | [optional] |
| **redemption** | [**LoyaltyCampaignVoucherRedemption**](LoyaltyCampaignVoucherRedemption.md) |  | [optional] |
| **code_config** | [**CodeConfig**](CodeConfig.md) |  |  |
| **is_referral_code** | **Boolean** | Always &#x60;false&#x60; for a loyalty card voucher | [optional] |
| **start_date** | **Time** | Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |

