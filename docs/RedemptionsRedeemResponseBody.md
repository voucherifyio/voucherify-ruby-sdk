# VoucherifySdk::RedemptionsRedeemResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redemptions** | [**Array&lt;Redemption&gt;**](Redemption.md) |  | [optional] |
| **parent_redemption** | [**Redemption**](Redemption.md) |  | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **inapplicable_redeemables** | [**Array&lt;ValidationsRedeemableInapplicable&gt;**](ValidationsRedeemableInapplicable.md) | Lists validation results of each inapplicable redeemable. | [optional] |
| **skipped_redeemables** | [**Array&lt;ValidationsRedeemableSkipped&gt;**](ValidationsRedeemableSkipped.md) | Lists validation results of each redeemable. If a redeemable can be applied, the API returns &#x60;\&quot;status\&quot;: \&quot;APPLICABLE\&quot;&#x60;. | [optional] |

