# VoucherifySdk::ValidationsValidateResponseBodyRedeemablesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **id** | **String** | Redeemable ID, i.e. the voucher code. | [optional] |
| **object** | **String** | Redeemable&#39;s object type. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **applicable_to** | [**ApplicableToResultList**](ApplicableToResultList.md) |  | [optional] |
| **inapplicable_to** | [**InapplicableToResultList**](InapplicableToResultList.md) |  | [optional] |
| **result** | [**ValidationsValidateResponseBodyRedeemablesItemResult**](ValidationsValidateResponseBodyRedeemablesItemResult.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes in the form of key/value pairs assigned to the redeemable. | [optional] |
| **categories** | [**Array&lt;CategoryWithStackingRulesType&gt;**](CategoryWithStackingRulesType.md) |  | [optional] |

