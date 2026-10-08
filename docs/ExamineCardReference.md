# VoucherifySdk::ExamineCardReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique card ID (&#x60;lcrd_...&#x60;). | [optional] |
| **card_definition_id** | **String** | Unique card definition ID (&#x60;lcdef_...&#x60;). | [optional] |
| **card_type** | **String** | Card type. Currently only &#x60;INDIVIDUAL&#x60; exists. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **code** | **String** | Card code. May be &#x60;null&#x60; right after member creation because card codes are generated asynchronously. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;card&#x60;. | [optional][default to &#39;card&#39;] |

