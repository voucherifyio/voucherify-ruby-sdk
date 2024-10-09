# VoucherifySdk::RedeemableHolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the redeemable holder. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the redeemable was assigned. The value is shown in the ISO 8601 format. | [optional] |
| **redeemable_id** | **String** | Identifier of the redeemable item. | [optional] |
| **redeemable_object** | **String** | Type of the redeemable. | [optional] |
| **customer_id** | **String** | Unique identifier of the customer. | [optional] |
| **holder_role** | **String** | Role of the holder. | [optional] |
| **campaign_id** | **String** | Unique identifier of the campaign as assigned by Voucherify. | [optional] |
| **campaign_type** | **String** | Defines the type of the campaign. | [optional][default to &#39;REFERRAL_PROGRAM&#39;] |
| **voucher_type** | **String** | Defines the type of the voucher. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a redeemable holder. The metadata object stores all custom attributes assigned to the &#x60;redeemable_holder&#x60; object. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;redeemable_holder&#39;] |

