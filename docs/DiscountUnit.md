# VoucherifySdk::DiscountUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Discount type. | [default to &#39;UNIT&#39;] |
| **unit_off** | **Integer** | Number of units to be granted a full value discount. | [optional] |
| **unit_off_formula** | **String** |  | [optional] |
| **effect** | [**DiscountUnitVouchersEffectTypes**](DiscountUnitVouchersEffectTypes.md) |  | [optional] |
| **unit_type** | **String** | The product deemed as free, chosen from product inventory (e.g. time, items). |  |
| **product** | [**SimpleProductDiscountUnit**](SimpleProductDiscountUnit.md) |  | [optional] |
| **sku** | [**SimpleSkuDiscountUnit**](SimpleSkuDiscountUnit.md) |  | [optional] |
| **is_dynamic** | **Boolean** | Flag indicating whether the discount was calculated using a formula. | [optional] |

