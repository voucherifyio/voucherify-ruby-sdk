# VoucherifySdk::RewardsReportSummaryEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the summary row (format: &#x60;lprrs_&#x60; followed by hexadecimal characters). | [optional] |
| **reward_id** | **String** | Identifies the reward (&#x60;lrew_...&#x60;). | [optional] |
| **success_count** | **Float** | Counts approved reward purchases. | [optional] |
| **failures_count** | **Float** | Counts reward purchase attempts that failed. | [optional] |
| **failures_breakdown** | **Object** | Counts failed reward purchase attempts by reason. A reason is present only when it was recorded. Empty when no failures were recorded. Keys can also be a card-transaction rejection reason or a publication error key. |  |
| **object** | **String** | Object type marker. Always &#x60;program_rewards_summary_report&#x60;. | [optional][default to &#39;program_rewards_summary_report&#39;] |

