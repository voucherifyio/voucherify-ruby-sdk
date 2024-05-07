# VoucherifySdk::ValidationEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique validation id. | [optional] |
| **session_id** | **String** | Unique session id. | [optional] |
| **status** | **String** | The validation status | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the validation was created in ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the customer making the purchase. | [optional] |
| **redeemables** | [**Array&lt;ValidationsRedeemableApplicable&gt;**](ValidationsRedeemableApplicable.md) | Lists validation results of each redeemable. | [optional] |
| **skipped_redeemables** | [**Array&lt;ValidationsRedeemableInapplicable&gt;**](ValidationsRedeemableInapplicable.md) | Lists validation results of each redeemable. | [optional] |
| **inapplicable_redeemables** | [**Array&lt;ValidationsRedeemableSkipped&gt;**](ValidationsRedeemableSkipped.md) | Lists validation results of each redeemable. | [optional] |

