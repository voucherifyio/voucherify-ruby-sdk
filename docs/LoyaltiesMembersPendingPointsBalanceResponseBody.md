# VoucherifySdk::LoyaltiesMembersPendingPointsBalanceResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | The number of pending points added to or subtracted from the loyalty card. | [optional] |
| **total** | **Integer** | Total number of pending points currently on a loyalty card. | [optional] |
| **object** | **String** | The type of the object represented by JSON. Default is &#x60;balance&#x60;. | [optional][default to &#39;balance&#39;] |
| **related_object** | [**LoyaltiesMembersPendingPointsBalanceResponseBodyRelatedObject**](LoyaltiesMembersPendingPointsBalanceResponseBodyRelatedObject.md) |  | [optional] |
| **operation_type** | **String** | The type of the operation being performed. | [optional][default to &#39;MANUAL&#39;] |

