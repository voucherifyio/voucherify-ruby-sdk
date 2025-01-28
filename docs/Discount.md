# VoucherifySdk::Discount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **amount_off** | **Float** | Amount taken off the subtotal of a price. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $10 discount is written as 1000. | [optional] |
| **amount_off_formula** | **String** |  | [optional] |
| **aggregated_amount_limit** | **Integer** | Maximum discount amount per order. | [optional] |
| **effect** | **String** |  | [optional] |
| **is_dynamic** | **Boolean** | Flag indicating whether the discount was calculated using a formula. | [optional] |
| **unit_off** | **Integer** | Number of units to be granted a full value discount. | [optional] |
| **unit_off_formula** | **String** | Formula used to calculate the number of units. | [optional] |
| **unit_type** | **String** | The product deemed as free, chosen from product inventory (e.g. time, items). | [optional] |
| **product** | [**DiscountProduct**](DiscountProduct.md) |  | [optional] |
| **sku** | [**SimpleSkuDiscountUnit**](SimpleSkuDiscountUnit.md) |  | [optional] |
| **units** | [**Array&lt;DiscountUnitMultipleOneUnit&gt;**](DiscountUnitMultipleOneUnit.md) |  | [optional] |
| **percent_off** | **Float** | The percent discount that the customer will receive. | [optional] |
| **percent_off_formula** | **String** |  | [optional] |
| **amount_limit** | **Float** | Upper limit allowed to be applied as a discount. Value is multiplied by 100 to precisely represent 2 decimal places. For example, a $6 maximum discount is written as 600. | [optional] |
| **fixed_amount** | **Float** | Sets a fixed value for an order total or the item price. The value is multiplied by 100 to precisely represent 2 decimal places. For example, a $10 discount is written as 1000. If the fixed amount is calculated by the formula, i.e. the &#x60;fixed_amount_formula&#x60; parameter is present in the fixed amount definition, this value becomes the **fallback value**. As a result, if the formula cannot be calculated due to missing metadata, for example, this value will be used as the fixed value. | [optional] |
| **fixed_amount_formula** | **String** |  | [optional] |

