# VoucherifySdk::RedeemableLoyaltyCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | Total number of points added to the loyalty card over its lifespan. | [optional] |
| **balance** | **Integer** | Points available for reward redemption. This is calculated as follows: &#x60;balance&#x60; &#x3D; &#x60;points&#x60; - &#x60;expired_points&#x60; - &#x60;subtracted_points&#x60; - &#x60;redemption.redeemed_points&#x60;. | [optional] |
| **exchange_ratio** | **Float** | The cash equivalent of the points defined in the points_ratio property. | [optional] |
| **points_ratio** | **Integer** | The number of loyalty points that will map to the predefined cash amount defined by the exchange_ratio property. | [optional] |
| **transfers** | [**Array&lt;LoyaltiesTransferPoints&gt;**](LoyaltiesTransferPoints.md) |  | [optional] |

