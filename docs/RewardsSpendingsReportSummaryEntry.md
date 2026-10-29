# VoucherifySdk::RewardsSpendingsReportSummaryEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | Identifies the reward (&#x60;lrew_...&#x60;). | [optional] |
| **cost_id** | **String** | Identifies the reward cost (&#x60;lrcst_...&#x60;). | [optional] |
| **spending_id** | **String** | Identifies the reward spending (&#x60;lrspn_...&#x60;). | [optional] |
| **card_definition_id** | **String** | Identifies the card definition (&#x60;lcdef_...&#x60;). | [optional] |
| **id** | **String** | Identifies the summary row (format: &#x60;lprss_&#x60; followed by hexadecimal characters). | [optional] |
| **success_count** | **Float** | Counts approved reward point spends. | [optional] |
| **points** | **Float** | Totals points spent on those reward spends. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_rewards_spendings_summary_report&#x60;. | [optional][default to &#39;program_rewards_spendings_summary_report&#39;] |

