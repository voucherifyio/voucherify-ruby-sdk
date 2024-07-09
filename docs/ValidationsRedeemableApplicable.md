# VoucherifySdk::ValidationsRedeemableApplicable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates whether the redeemable can be applied or not applied based on the validation rules. | [default to &#39;APPLICABLE&#39;] |
| **id** | **String** | Redeemable ID, i.e. the voucher code. |  |
| **object** | **String** | Redeemable&#39;s object type. |  |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **applicable_to** | [**ApplicableToResultList**](ApplicableToResultList.md) |  | [optional] |
| **inapplicable_to** | [**InapplicableToResultList**](InapplicableToResultList.md) |  | [optional] |
| **result** | [**ValidationsRedeemableApplicableResult**](ValidationsRedeemableApplicableResult.md) |  |  |
| **metadata** | **Object** | The metadata object stores all custom attributes in the form of key/value pairs assigned to the redeemable. | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) |  | [optional] |

