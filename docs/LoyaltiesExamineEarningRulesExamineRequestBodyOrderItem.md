# VoucherifySdk::LoyaltiesExamineEarningRulesExamineRequestBodyOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Order item ID assigned by Voucherify. Can be &#x60;null&#x60;. | [optional] |
| **source_id** | **String** | Order item source ID, e.g. from an external system. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **product_id** | **String** | Product ID. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **sku_id** | **String** | SKU ID. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **related_object** | **String** | Whether the item refers to a product or a SKU. Can be &#x60;null&#x60;. | [optional] |
| **amount** | **Float** | Item amount before discounts - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **discount_amount** | **Float** | Item discount amount - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **quantity** | **Float** | Item quantity - a positive integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **price** | **Float** | Item unit price - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **product** | [**LoyaltiesExamineEarningRulesExamineRequestBodyOrderItemProduct**](LoyaltiesExamineEarningRulesExamineRequestBodyOrderItemProduct.md) |  | [optional] |
| **sku** | [**LoyaltiesExamineEarningRulesExamineRequestBodyOrderItemSku**](LoyaltiesExamineEarningRulesExamineRequestBodyOrderItemSku.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value metadata; any JSON object is accepted. | [optional] |

