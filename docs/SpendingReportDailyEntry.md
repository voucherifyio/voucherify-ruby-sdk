# VoucherifySdk::SpendingReportDailyEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Identifies the start of the truncated aggregation period (&#x60;YYYY-MM-DD&#x60;). For &#x60;week&#x60; this is Monday. For &#x60;month&#x60; this is the first day. For &#x60;quarter&#x60; this is the quarter start. | [optional] |
| **card_definition_id** | **String** | Identifies the card definition (&#x60;lcdef_...&#x60;). | [optional] |
| **success** | **Float** | Counts successful spending operations in the period. | [optional] |
| **success_on_reward** | **Float** | Counts successful reward purchases in the period. | [optional] |
| **success_on_order** | **Float** | Counts successful order payments in the period. | [optional] |
| **points** | **Float** | Totals points spent in the period. | [optional] |
| **points_on_rewards** | **Float** | Totals points spent on reward purchases in the period. | [optional] |
| **points_on_order** | **Float** | Totals points spent on order payments in the period. | [optional] |
| **amount_on_order** | **Float** | Totals order amount paid with points in the period. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;spending_daily_report&#x60;. | [optional][default to &#39;spending_daily_report&#39;] |

