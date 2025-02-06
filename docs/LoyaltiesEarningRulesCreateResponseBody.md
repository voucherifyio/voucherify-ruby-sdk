# VoucherifySdk::LoyaltiesEarningRulesCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Assigned by the Voucherify API, identifies the earning rule object. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the earning rule was created. The value is shown in the ISO 8601 format. | [optional] |
| **loyalty** | [**LoyaltiesEarningRulesCreateResponseBodyLoyalty**](LoyaltiesEarningRulesCreateResponseBodyLoyalty.md) |  | [optional] |
| **event** | **String** |  | [optional] |
| **custom_event** | [**LoyaltiesEarningRulesCreateResponseBodyCustomEvent**](LoyaltiesEarningRulesCreateResponseBodyCustomEvent.md) |  | [optional] |
| **segment** | [**LoyaltiesEarningRulesCreateResponseBodySegment**](LoyaltiesEarningRulesCreateResponseBodySegment.md) |  | [optional] |
| **loyalty_tier** | [**LoyaltiesEarningRulesCreateResponseBodyLoyaltyTier**](LoyaltiesEarningRulesCreateResponseBodyLoyaltyTier.md) |  | [optional] |
| **pending_points** | [**LoyaltiesEarningRulesCreateResponseBodyPendingPoints**](LoyaltiesEarningRulesCreateResponseBodyPendingPoints.md) |  | [optional] |
| **source** | [**LoyaltiesEarningRulesCreateResponseBodySource**](LoyaltiesEarningRulesCreateResponseBodySource.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. Default is earning_rule. | [optional][default to &#39;earning_rule&#39;] |
| **automation_id** | **String** | For internal use by Voucherify. | [optional] |
| **start_date** | **String** | Start date defines when the earning rule starts to be active. Activation timestamp is presented in the ISO 8601 format. The earning rule is inactive before this date. If you do not define the start date for an earning rule, it will inherit the campaign start date by default. | [optional] |
| **expiration_date** | **String** | Expiration date defines when the earning rule expires. Expiration timestamp is presented in the ISO 8601 format. The earning rule is inactive after this date. If you do not define the expiration date for an earning rule, it will inherit the campaign expiration date by default. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the earning rule. A set of key/value pairs that you can attach to an earning rule object. It can be useful for storing additional information about the earning rule in a structured format. | [optional] |
| **validation_rule_id** | **String** | A unique validation rule identifier assigned by the Voucherify API. The validation rule is verified before points are added to the balance. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the earning rule was last updated in ISO 8601 format. | [optional] |
| **active** | **Boolean** | A flag to toggle the earning rule on or off. You can disable an earning rule even though it&#39;s within the active period defined by the start_date and expiration_date of the campaign or the earning rule&#39;s own start_date and expiration_date.  - &#x60;true&#x60; indicates an active earning rule - &#x60;false&#x60; indicates an inactive earning rule | [optional] |

