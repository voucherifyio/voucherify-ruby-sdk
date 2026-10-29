# VoucherifySdk::LoyaltiesExamineEarningRulesExamineRequestBodyOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Order amount after discounts - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **initial_amount** | **Float** | Order amount before discounts - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **discount_amount** | **Float** | Total discount amount - a non-negative integer. May be provided as a string or a number. Can be &#x60;null&#x60;. | [optional] |
| **items** | [**Array&lt;LoyaltiesExamineEarningRulesExamineRequestBodyOrderItem&gt;**](LoyaltiesExamineEarningRulesExamineRequestBodyOrderItem.md) | Order line items (up to 500). Can be &#x60;null&#x60;. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Arbitrary key-value metadata; any JSON object is accepted. | [optional] |

