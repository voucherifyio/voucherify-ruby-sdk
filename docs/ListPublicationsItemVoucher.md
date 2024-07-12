# VoucherifySdk::ListPublicationsItemVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Voucher code. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;voucher&#39;] |
| **campaign** | **String** | Campaign name | [optional] |
| **gift** | [**Gift**](Gift.md) |  | [optional] |
| **loyalty_card** | **Object** | Defines the loyalty card details. | [optional] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |

