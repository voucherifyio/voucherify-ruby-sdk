# VoucherifySdk::LoyaltyTierExpiration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique customer identifier of the customer making the purchase. The ID is assigned by Voucherify. | [optional] |
| **campaign_id** | **String** | Unique campaign ID, assigned by Voucherify. | [optional] |
| **tier_id** | **String** | Unique tier ID, assigned by Voucherify. | [optional] |
| **start_date** | **String** | Activation timestamp defines when the loyalty tier starts to be active in ISO 8601 format. Loyalty tier is inactive before this date. | [optional] |
| **expiration_date** | **String** | Expiration timestamp defines when the loyalty tier expires in ISO 8601 format. Loyalty tier is inactive after this date. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the loyalty tier was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the loyalty tier was updated. The value is shown in the ISO 8601 format. | [optional] |

