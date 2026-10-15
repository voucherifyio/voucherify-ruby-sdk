# VoucherifySdk::CardSimple

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the card. | [optional] |
| **card_definition_id** | **String** | Identifies the card definition. | [optional] |
| **card_type** | **String** | Card type. Currently only &#x60;INDIVIDUAL&#x60; is supported. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **code** | **String** | Human-readable card code. Card code generation is asynchronous - this field is &#x60;null&#x60; right after member creation and is populated shortly after, once the background code generation completes. | [optional] |
| **lifetime_bucket** | [**CardLifetimeBucket**](CardLifetimeBucket.md) |  | [optional] |
| **balance** | [**CardBalance**](CardBalance.md) |  | [optional] |
| **object** | **String** | Object type. Always &#x60;card&#x60;. | [optional][default to &#39;card&#39;] |
| **next_expiration** | [**CardNextExpiration**](CardNextExpiration.md) |  | [optional] |
| **next_activation** | [**CardNextActivation**](CardNextActivation.md) |  | [optional] |

