# VoucherifySdk::ValidationsValidatePartialResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** | The result of the validation. It takes all of the redeemables into account and returns a &#x60;false&#x60; if at least one redeemable is inapplicable. Returns &#x60;true&#x60; if all redeemables are applicable. |  |
| **redeemables** | [**Array&lt;ValidationsRedeemableApplicable&gt;**](ValidationsRedeemableApplicable.md) | Lists validation results of each redeemable. If a redeemable can be applied, the API returns &#x60;\&quot;status\&quot;: \&quot;APPLICABLE\&quot;&#x60;. |  |
| **inapplicable_redeemables** | [**Array&lt;ValidationsRedeemableInapplicable&gt;**](ValidationsRedeemableInapplicable.md) | Lists validation results of each inapplicable redeemable. |  |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **session** | [**Session**](Session.md) |  | [optional] |
| **application_mode** | **String** |  | [default to &#39;PARTIAL&#39;] |

