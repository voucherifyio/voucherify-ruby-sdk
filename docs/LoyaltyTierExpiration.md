# VoucherifySdk::LoyaltyTierExpiration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique customer ID of the customer making the purchase. |  |
| **campaign_id** | **String** | Unique campaign ID, assigned by Voucherify. |  |
| **tier_id** | **String** | Unique tier ID, assigned by Voucherify. |  |
| **start_date** | **String** | Activation timestamp defines when the loyalty tier starts to be active in ISO 8601 format. Loyalty tier is inactive before this date. | [optional] |
| **expiration_date** | **String** | Expiration timestamp defines when the loyalty tier expires in ISO 8601 format. Loyalty tier is inactive after this date. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the loyalty tier was created in ISO 8601 format. |  |
| **updated_at** | **Time** | Timestamp representing the date and time when the loyalty tier was updated in ISO 8601 format. | [optional] |

