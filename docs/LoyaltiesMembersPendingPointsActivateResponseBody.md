# VoucherifySdk::LoyaltiesMembersPendingPointsActivateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | The number of pending points added to the loyalty card. | [optional] |
| **total** | **Integer** | Total number of points incurred over the lifespan of the loyalty card, minus the expired points. | [optional] |
| **balance** | **Integer** | The current number of loyalty points after the pendint points have been added. | [optional] |
| **type** | **String** | The type of the voucher being modified. For pending points, it is always &#x60;loyalty_card&#x60;. | [optional][default to &#39;loyalty_card&#39;] |
| **object** | **String** | The type of the object represented by JSON. Default is &#x60;balance&#x60;. | [optional][default to &#39;balance&#39;] |
| **related_object** | [**LoyaltiesMembersPendingPointsActivateResponseBodyRelatedObject**](LoyaltiesMembersPendingPointsActivateResponseBodyRelatedObject.md) |  | [optional] |
| **operation_type** | **String** | The type of the operation being performed. | [optional][default to &#39;MANUAL&#39;] |

