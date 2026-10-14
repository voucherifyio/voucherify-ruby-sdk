# VoucherifySdk::ClientValidationsValidateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the validation, assigned by Voucherify. | [optional] |
| **valid** | **Boolean** | The result of the validation. It takes all of the redeemables into account and returns a &#x60;false&#x60; if at least one redeemable is inapplicable. Returns &#x60;true&#x60; if all redeemables are applicable. | [optional] |
| **redeemables** | [**Array&lt;ClientValidationsValidateResponseBodyRedeemablesItem&gt;**](ClientValidationsValidateResponseBodyRedeemablesItem.md) | Lists validation results of each redeemable. If  &#x60;redeemables_application_mode&#x60; is &#x60;PARTIAL&#x60; in the &#x60;stacking_rules&#x60; object, all redeemables here will be &#x60;APPLICABLE&#x60;. Read more in [the Stacking rules article](/orchestrate/stacking-rules). | [optional] |
| **skipped_redeemables** | [**Array&lt;ValidationsRedeemableSkipped&gt;**](ValidationsRedeemableSkipped.md) | Lists validation results of each skipped redeemable. | [optional] |
| **inapplicable_redeemables** | [**Array&lt;ValidationsRedeemableInapplicable&gt;**](ValidationsRedeemableInapplicable.md) | Lists validation results of each inapplicable redeemable. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **session** | [**Session**](Session.md) |  | [optional] |
| **stacking_rules** | [**StackingRules**](StackingRules.md) |  |  |

