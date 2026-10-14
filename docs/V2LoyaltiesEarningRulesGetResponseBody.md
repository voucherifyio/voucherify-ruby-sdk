# VoucherifySdk::V2LoyaltiesEarningRulesGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Earning rule ID (&#x60;lern_...&#x60;). | [optional] |
| **name** | **String** | Earning rule name. | [optional] |
| **status** | **String** | Current status. &#x60;DELETED&#x60; also exists internally but deleted rules are excluded from API reads. | [optional] |
| **earnings** | [**Array&lt;EarningRuleEarning&gt;**](EarningRuleEarning.md) | Earning definitions of the rule. Contains at least one earning. | [optional] |
| **trigger** | [**EarningRuleTrigger**](EarningRuleTrigger.md) |  |  |
| **error** | [**LoyaltyV2ActivityEarningRuleError**](LoyaltyV2ActivityEarningRuleError.md) |  | [optional] |
| **validity_hours** | [**EarningRuleValidityHours**](EarningRuleValidityHours.md) |  |  |
| **start_date** | **Time** | Date-time from which the rule is active. Can be &#x60;null&#x60;. | [optional] |
| **end_date** | **Time** | Date-time until which the rule is active. Can be &#x60;null&#x60;. | [optional] |
| **trigger_limits** | [**V2LoyaltiesEarningRulesGetResponseBodyTriggerLimits**](V2LoyaltiesEarningRulesGetResponseBodyTriggerLimits.md) |  | [optional] |
| **earning_limits** | [**LoyaltyV2ActivityEarningRuleEarningLimits**](LoyaltyV2ActivityEarningRuleEarningLimits.md) |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value metadata; any JSON object is accepted. |  |
| **created_at** | **Time** | Creation timestamp (ISO 8601). | [optional] |
| **updated_at** | **Time** | Last update timestamp (ISO 8601). &#x60;null&#x60; when never updated. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;earning_rule&#x60;. | [optional][default to &#39;earning_rule&#39;] |

