# VoucherifySdk::SimpleVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier that represents the voucher assigned by Voucherify. | [optional] |
| **code** | **String** | Voucher code. |  |
| **gift** | [**Gift**](Gift.md) |  | [optional] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
| **loyalty_card** | **Object** | Defines the loyalty card details. | [optional] |
| **type** | **String** | Type of the object. | [optional][default to &#39;voucher&#39;] |
| **campaign** | **Object** | Campaign object | [optional] |
| **campaign_id** | **String** | Campaign unique ID. | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |
| **holder_id** | **String** | Unique customer ID of campaign owner. | [optional] |
| **referrer_id** | **String** | Unique referrer ID. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the order was created in ISO 8601 format. | [optional] |
| **object** | **String** | The type of object represented by JSON. | [optional][default to &#39;voucher&#39;] |

