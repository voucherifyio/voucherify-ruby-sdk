# VoucherifySdk::EarningRuleBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Assigned by the Voucherify API, identifies the earning rule object. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the earning rule was created. The value is shown in the ISO 8601 format. | [optional] |
| **loyalty** | [**EarningRuleBaseLoyalty**](EarningRuleBaseLoyalty.md) |  | [optional] |
| **event** | [**EarningRuleEvent**](EarningRuleEvent.md) |  | [optional] |
| **custom_event** | [**EarningRuleBaseCustomEvent**](EarningRuleBaseCustomEvent.md) |  | [optional] |
| **segment** | [**EarningRuleBaseSegment**](EarningRuleBaseSegment.md) |  | [optional] |
| **source** | [**EarningRuleBaseSource**](EarningRuleBaseSource.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. Default is earning_rule. | [optional][default to &#39;earning_rule&#39;] |
| **automation_id** | **String** | For internal use by Voucherify. | [optional] |
| **start_date** | **String** | Start date defines when the earning rule starts to be active. Activation timestamp is presented in the ISO 8601 format. Earning rule is inactive before this date. If you don&#39;t define the start date for an earning rule, it&#39;ll inherit the campaign start date by default. | [optional] |
| **expiration_date** | **String** | Expiration date defines when the earning rule expires. Expiration timestamp is presented in the ISO 8601 format. Earning rule is inactive after this date.If you don&#39;t define the expiration date for an earning rule, it&#39;ll inherit the campaign expiration date by default. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the earning rule. A set of key/value pairs that you can attach to an earning rule object. It can be useful for storing additional information about the earning rule in a structured format. | [optional] |

