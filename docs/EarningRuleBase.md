# VoucherifySdk::EarningRuleBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Assigned by the Voucherify API, identifies the earning rule object. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the earning rule was created in ISO 8601 format. |  |
| **loyalty** | [**EarningRuleBaseLoyalty**](EarningRuleBaseLoyalty.md) |  |  |
| **event** | [**EarningRuleEvent**](EarningRuleEvent.md) |  | [optional] |
| **custom_event** | [**EarningRuleBaseCustomEvent**](EarningRuleBaseCustomEvent.md) |  | [optional] |
| **segment** | [**EarningRuleBaseSegment**](EarningRuleBaseSegment.md) |  | [optional] |
| **source** | [**EarningRuleBaseSource**](EarningRuleBaseSource.md) |  |  |
| **object** | **String** | The type of object represented by JSON. Default is earning_rule. | [default to &#39;earning_rule&#39;] |
| **automation_id** | **String** | For internal use by Voucherify. |  |
| **start_date** | **String** | Start date defines when the earning rule starts to be active. Activation timestamp in ISO 8601 format. Earning rule is inactive before this date. If you don&#39;t define the start date for an earning rule, it&#39;ll inherit the campaign start date by default. | [optional] |
| **expiration_date** | **String** | Expiration date defines when the earning rule expires. Expiration timestamp in ISO 8601 format. Earning rule is inactive after this date.If you don&#39;t define the expiration date for an earning rule, it&#39;ll inherit the campaign expiration date by default. | [optional] |
| **validity_timeframe** | [**EarningRuleBaseValidityTimeframe**](EarningRuleBaseValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the earning rule is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the earning rule. A set of key/value pairs that you can attach to an earning rule object. It can be useful for storing additional information about the earning rule in a structured format. |  |

