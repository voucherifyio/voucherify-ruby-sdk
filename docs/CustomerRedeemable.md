# VoucherifySdk::CustomerRedeemable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redeemable holder identifier. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the redeemable was assigned. The value is shown in the ISO 8601 format. | [optional] |
| **redeemable_id** | **String** | Identifier of the redeemable item. | [optional] |
| **redeemable_object** | **String** | Type of the redeemable. | [optional] |
| **customer_id** | **String** | Identifier of the customer. | [optional] |
| **holder_role** | **String** | Role of the holder. | [optional][default to &#39;OWNER&#39;] |
| **campaign_id** | **String** | Unique campaign identifier, assigned by Voucherify. | [optional] |
| **campaign_type** | **String** | Defines the type of the campaign. | [optional][default to &#39;DISCOUNT_COUPONS&#39;] |
| **voucher_type** | **String** | Defines the type of the voucher. | [optional][default to &#39;DISCOUNT_VOUCHER&#39;] |
| **redeemable** | [**CustomerRedeemableRedeemable**](CustomerRedeemableRedeemable.md) |  | [optional] |

