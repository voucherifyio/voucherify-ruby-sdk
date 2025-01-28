# VoucherifySdk::RedeemableLoyaltyCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | Total points incurred over the lifespan of the loyalty card, minus the expired points. | [optional] |
| **balance** | **Integer** | Points available for reward redemption. | [optional] |
| **exchange_ratio** | **Float** | The cash equivalent of the points defined in the points_ratio property. | [optional] |
| **points_ratio** | **Integer** | The number of loyalty points that will map to the predefined cash amount defined by the exchange_ratio property. | [optional] |
| **transfers** | [**Array&lt;LoyaltiesTransferPoints&gt;**](LoyaltiesTransferPoints.md) |  | [optional] |

