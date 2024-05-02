# VoucherifySdk::DiscountAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Defines the type of the voucher. | [default to &#39;AMOUNT&#39;] |
| **amount_off** | **Float** | Amount taken off the subtotal of a price. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $10 discount is written as 1000. |  |
| **amount_off_formula** | **String** |  | [optional] |
| **aggregated_amount_limit** | **Integer** | Maximum discount amount per order. | [optional] |
| **effect** | [**DiscountAmountVouchersEffectTypes**](DiscountAmountVouchersEffectTypes.md) |  | [optional] |
| **is_dynamic** | **Boolean** | Flag indicating whether the discount was calculated using a formula. | [optional] |

