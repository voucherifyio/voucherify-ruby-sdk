# VoucherifySdk::EarningRuleExpirationRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_type** | **String** | Type of period. Can be set for &#x60;MONTH&#x60; or &#x60;FIXED_DAY_OF_YEAR&#x60;. &#x60;MONTH&#x60; requires the &#x60;period_value&#x60; field. &#x60;FIXED_DAY_OF_YEAR&#x60; requires the &#x60;fixed_month&#x60; and &#x60;fixed_day&#x60; fields. | [optional][default to &#39;MONTH&#39;] |
| **period_value** | **Integer** | Value of the period. Required for the &#x60;period_type: MONTH&#x60;. | [optional] |
| **rounding_type** | **String** | Type of rounding of the expiration period. Optional for the &#x60;period_type: MONTH&#x60;. | [optional] |
| **rounding_value** | **Integer** | Value of rounding of the expiration period. Required for the &#x60;rounding_type&#x60;. | [optional] |
| **fixed_month** | **Integer** | Determines the month when the points expire; &#x60;1&#x60; is January, &#x60;2&#x60; is February, and so on. Required for the &#x60;period_type: FIXED_DAY_OF_YEAR&#x60;. | [optional] |
| **fixed_day** | **Integer** | Determines the day of the month when the points expire. Required for the &#x60;period_type: FIXED_DAY_OF_YEAR&#x60;. | [optional] |

