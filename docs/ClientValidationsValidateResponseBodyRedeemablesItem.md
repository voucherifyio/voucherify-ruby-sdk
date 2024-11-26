# VoucherifySdk::ClientValidationsValidateResponseBodyRedeemablesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **id** | **String** | Redeemable ID, i.e. the voucher code. | [optional] |
| **object** | **String** | Redeemable&#39;s object type. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **applicable_to** | [**ApplicableToResultList**](ApplicableToResultList.md) |  | [optional] |
| **inapplicable_to** | [**InapplicableToResultList**](InapplicableToResultList.md) |  | [optional] |
| **result** | [**ClientValidationsValidateResponseBodyRedeemablesItemResult**](ClientValidationsValidateResponseBodyRedeemablesItemResult.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes in the form of key/value pairs assigned to the redeemable. | [optional] |
| **categories** | [**Array&lt;CategoryWithStackingRulesType&gt;**](CategoryWithStackingRulesType.md) |  | [optional] |
| **campaign_name** | **String** | Campaign name. Displayed only if the &#x60;options.expand&#x60; is passed with a &#x60;redeemable&#x60; value in the validation request body. | [optional] |
| **campaign_id** | **String** | Unique campaign ID assigned by Voucherify. Displayed only if the &#x60;options.expand&#x60; is passed with a &#x60;redeemable&#x60; value in the validation request body. | [optional] |
| **name** | **String** | Name of the promotion tier. Displayed only if the &#x60;options.expand&#x60; is passed with a &#x60;redeemable&#x60; value in the validation request body. | [optional] |

