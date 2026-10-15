# VoucherifySdk::SpendingReportSummaryEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the summary row (&#x60;lssum_...&#x60;). | [optional] |
| **card_definition_id** | **String** | Identifies the card definition (&#x60;lcdef_...&#x60;). | [optional] |
| **success** | **Float** | Counts successful spending operations. | [optional] |
| **success_on_reward** | **Float** | Counts successful reward purchases. | [optional] |
| **success_on_order** | **Float** | Counts successful order payments. | [optional] |
| **points** | **Float** | Totals points spent. | [optional] |
| **points_on_rewards** | **Float** | Totals points spent on reward purchases. | [optional] |
| **points_on_order** | **Float** | Totals points spent on order payments. | [optional] |
| **amount_on_order** | **Float** | Totals order amount paid with points. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;spending_summary_report&#x60;. | [optional][default to &#39;spending_summary_report&#39;] |

