# VoucherifySdk::RewardsSpendingsReportDailyEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | Identifies the reward (&#x60;lrew_...&#x60;). | [optional] |
| **cost_id** | **String** | Identifies the reward cost (&#x60;lrcst_...&#x60;). | [optional] |
| **spending_id** | **String** | Identifies the reward spending (&#x60;lrspn_...&#x60;). | [optional] |
| **card_definition_id** | **String** | Identifies the card definition (&#x60;lcdef_...&#x60;). | [optional] |
| **date** | **Date** | Identifies the start of the truncated aggregation period (&#x60;YYYY-MM-DD&#x60;). For &#x60;week&#x60; this is Monday. For &#x60;month&#x60; this is the first day. For &#x60;quarter&#x60; this is the quarter start. | [optional] |
| **success_count** | **Float** | Counts approved reward point spends in the period. | [optional] |
| **points** | **Float** | Totals points spent on those reward spends in the period. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_rewards_spendings_daily_report&#x60;. | [optional][default to &#39;program_rewards_spendings_daily_report&#39;] |

