# VoucherifySdk::Card

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
| **program_id** | **String** | Identifies the loyalty program. | [optional] |
| **customer_id** | **String** | Identifies the customer linked to the card. | [optional] |
| **member_id** | **String** | Identifies the member linked to the card. | [optional] |
| **created_at** | **Time** | Records when the card was created (ISO 8601). | [optional] |
| **updated_at** | **Time** | Records the last update (ISO 8601). &#x60;null&#x60; if the card has never been updated. | [optional] |

