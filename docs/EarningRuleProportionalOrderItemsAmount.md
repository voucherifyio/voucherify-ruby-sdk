# VoucherifySdk::EarningRuleProportionalOrderItemsAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Defines how the points will be added to the loyalty card.PROPORTIONAL adds points based on a pre-defined ratio. | [default to &#39;PROPORTIONAL&#39;] |
| **calculation_type** | **String** | ORDER_ITEMS_AMOUNT; Pre-discount amount spent on items defined in the order_items.amount.object &amp; .id (X points for every Y spent on items excluding discounts) | [default to &#39;ORDER_ITEMS_AMOUNT&#39;] |
| **order_items** | [**EarningRuleProportionalOrderItemsAmountOrderItems**](EarningRuleProportionalOrderItemsAmountOrderItems.md) |  |  |

