# VoucherifySdk::RewardsReportDailyEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Identifies the start of the truncated aggregation period (&#x60;YYYY-MM-DD&#x60;). For &#x60;week&#x60; this is Monday. For &#x60;month&#x60; this is the first day. For &#x60;quarter&#x60; this is the quarter start. | [optional] |
| **reward_id** | **String** | Identifies the reward (&#x60;lrew_...&#x60;). | [optional] |
| **success_count** | **Float** | Counts approved reward purchases in the period. | [optional] |
| **failures_count** | **Float** | Counts reward purchase attempts that failed in the period. | [optional] |
| **failures_breakdown** | **Object** | Always an empty object even if &#x60;failures_count&#x60; is above zero. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_rewards_daily_report&#x60;. | [optional][default to &#39;program_rewards_daily_report&#39;] |

