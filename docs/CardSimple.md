# VoucherifySdk::CardSimple

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_type** | **String** | Card type. Currently only &#x60;INDIVIDUAL&#x60; is supported. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **lifetime_bucket** | [**CardLifetimeBucket**](CardLifetimeBucket.md) |  | [optional] |
| **balance** | [**CardBalance**](CardBalance.md) |  | [optional] |
| **id** | **String** | Unique Voucherify ID of the card. | [optional] |
| **card_definition_id** | **String** | Unique Voucherify ID of the card definition the card was created from. | [optional] |
| **code** | **String** | Human-readable card code. Card code generation is asynchronous - this field is &#x60;null&#x60; right after member creation and is populated shortly after, once the background code generation completes. | [optional] |
| **next_expiration** | [**CardNextExpiration**](CardNextExpiration.md) |  | [optional] |
| **next_activation** | [**CardNextActivation**](CardNextActivation.md) |  | [optional] |
| **object** | **String** | Object type marker, always &#x60;card&#x60;. | [optional][default to &#39;card&#39;] |

