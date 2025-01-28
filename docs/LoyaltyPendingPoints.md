# VoucherifySdk::LoyaltyPendingPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the pending point entry, assigned by Voucherify. | [optional] |
| **voucher_id** | **String** | Unique identifier of the loyalty card, assigned by Voucherify. | [optional] |
| **campaign_id** | **String** | Unique campaign identifier, assigned by Voucherify. | [optional] |
| **customer_id** | **String** | Unique customer identifier, assigned by Voucherify. | [optional] |
| **order_id** | **String** | Unique order identifier, assigned by Voucherify. | [optional] |
| **points** | **Integer** | Number of points in the pending state. | [optional] |
| **activates_at** | **Date** | Date when the pending points are activated and added to the customer&#39;s loyalty card. | [optional] |
| **details** | [**LoyaltyPendingPointsDetails**](LoyaltyPendingPointsDetails.md) |  |  |
| **created_at** | **Time** | Timestamp representing the date and time when the pending point entry was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the pending point entry was modified. The value is shown in the ISO 8601 format. | [optional] |

