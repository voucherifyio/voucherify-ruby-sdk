# VoucherifySdk::ValidationsRedeemableSkipped

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates whether the redeemable can be applied or not applied based on the validation rules. | [optional][default to &#39;SKIPPED&#39;] |
| **id** | **String** | Redeemable ID, i.e. the voucher code. | [optional] |
| **object** | **String** | Redeemable&#39;s object type. | [optional] |
| **result** | [**ValidationsRedeemableSkippedResult**](ValidationsRedeemableSkippedResult.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes in the form of key/value pairs assigned to the redeemable. | [optional] |
| **categories** | [**Array&lt;CategoryWithStackingRulesType&gt;**](CategoryWithStackingRulesType.md) |  | [optional] |

