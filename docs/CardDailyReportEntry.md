# VoucherifySdk::CardDailyReportEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Identifies the start of the truncated aggregation period (&#x60;YYYY-MM-DD&#x60;). For &#x60;week&#x60; this is Monday. For &#x60;month&#x60; this is the first day. For &#x60;quarter&#x60; this is the quarter start. | [optional] |
| **points_total** | **Float** | Points credited to the card in the period. Sums &#x60;points_earned&#x60;, &#x60;points_added&#x60;, and &#x60;points_purchased&#x60;. Points spent, expired, subtracted, refunded, returned, or reversed are not deducted. | [optional] |
| **points_earned** | **Float** | Points earned through earning rules in the period. Includes pending points activated in the period. | [optional] |
| **points_added** | **Float** | Points added manually in the period. | [optional] |
| **points_purchased** | **Float** | Points purchased (e.g. via loyalty-card-points rewards) in the period. | [optional] |
| **points_purchased_reversed** | **Float** | Purchased points reversed (e.g. by reward refunds) in the period. | [optional] |
| **points_subtracted** | **Float** | Points subtracted manually in the period. | [optional] |
| **points_expired** | **Float** | Points expired in the period. | [optional] |
| **points_spent** | **Float** | Points spent (on rewards and order payments) in the period. | [optional] |
| **points_refunded** | **Float** | Points refunded in the period. | [optional] |
| **points_returned** | **Float** | Points returned in the period. | [optional] |
| **points_locked** | **Float** | Points locked in the period. | [optional] |
| **points_unlocked** | **Float** | Points unlocked in the period. Includes points released when a spending transaction is approved (also counted in &#x60;points_spent&#x60;) or rejected. | [optional] |
| **pending_points_total** | **Float** | Pending points added in the period. Activated and canceled pending points are not deducted. | [optional] |
| **pending_points_activated** | **Float** | Pending points activated in the period. Also counted in &#x60;points_earned&#x60; and &#x60;points_total&#x60;. | [optional] |
| **pending_points_canceled** | **Float** | Pending points canceled in the period. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;card_daily_report&#x60;. | [optional][default to &#39;card_daily_report&#39;] |

