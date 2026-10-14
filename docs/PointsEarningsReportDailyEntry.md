# VoucherifySdk::PointsEarningsReportDailyEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **earning_rule_id** | **String** | Identifies the earning rule (format &#x60;lern_...&#x60;). | [optional] |
| **earning_item_id** | **String** | Identifies the earning item that produced the points (format: &#x60;lernei_&#x60; followed by hexadecimal characters). | [optional] |
| **card_definition_id** | **String** | Identifies the card definition (format &#x60;lcdef_...&#x60;). | [optional] |
| **date** | **Date** | Identifies the start of the truncated aggregation period (&#x60;YYYY-MM-DD&#x60;). For &#x60;week&#x60; this is Monday. For &#x60;month&#x60; this is the first day. For &#x60;quarter&#x60; this is the quarter start. | [optional] |
| **success_count** | **Float** | Counts earning operations that credited points or added pending points in the period. | [optional] |
| **points** | **Float** | Sums points credited immediately by earning rules in the period. Pending points activated in the period are not included. | [optional] |
| **pending_points** | **Float** | Sums pending points added in the period. Activated and canceled pending points are not deducted. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_points_earnings_daily_report&#x60;. | [optional][default to &#39;program_points_earnings_daily_report&#39;] |

