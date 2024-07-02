# VoucherifySdk::CampaignVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of voucher. | [default to &#39;DISCOUNT_VOUCHER&#39;] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
| **gift** | [**Gift**](Gift.md) |  | [optional] |
| **loyalty_card** | [**CampaignLoyaltyCard**](CampaignLoyaltyCard.md) |  | [optional] |
| **redemption** | [**CampaignVoucherRedemption**](CampaignVoucherRedemption.md) |  |  |
| **code_config** | [**CodeConfigRequiredLengthCharsetPattern**](CodeConfigRequiredLengthCharsetPattern.md) |  |  |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. |  |
| **start_date** | **Time** | Activation timestamp defines when the campaign starts to be active in ISO 8601 format. Campaign is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the campaign expires in ISO 8601 format.  Campaign is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**CampaignBaseValidityTimeframe**](CampaignBaseValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
