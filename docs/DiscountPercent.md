# VoucherifySdk::DiscountPercent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Defines the type of the voucher. | [default to &#39;PERCENT&#39;] |
| **percent_off** | **Float** | The percent discount that the customer will receive. |  |
| **percent_off_formula** | **String** |  | [optional] |
| **amount_limit** | **Float** | Upper limit allowed to be applied as a discount. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $6 maximum discount is written as 600. | [optional] |
| **aggregated_amount_limit** | **Integer** | Maximum discount amount per order. | [optional] |
| **effect** | [**DiscountPercentVouchersEffectTypes**](DiscountPercentVouchersEffectTypes.md) |  | [optional] |
| **is_dynamic** | **Boolean** | Flag indicating whether the discount was calculated using a formula. | [optional] |

