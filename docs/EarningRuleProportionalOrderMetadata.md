# VoucherifySdk::EarningRuleProportionalOrderMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Defines how the points will be added to the loyalty card.PROPORTIONAL adds points based on a pre-defined ratio. | [default to &#39;PROPORTIONAL&#39;] |
| **calculation_type** | **String** | &#x60;ORDER_METADATA&#x60;: Order Metadata (X points for every Y in metadata attribute, defined in the property key under the order.metadata object) | [default to &#39;ORDER_METADATA&#39;] |
| **order** | [**EarningRuleProportionalOrderMetadataOrder**](EarningRuleProportionalOrderMetadataOrder.md) |  |  |

