# VoucherifySdk::ValidationsValidateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | [**ValidationsValidateRequestBodyOptions**](ValidationsValidateRequestBodyOptions.md) |  | [optional] |
| **redeemables** | [**Array&lt;ValidationsValidateRequestBodyRedeemablesItem&gt;**](ValidationsValidateRequestBodyRedeemablesItem.md) | An array of redeemables. You can combine &#x60;voucher&#x60;(s) and &#x60;promotion_tier&#x60;(s). Alternatively, send one unique&#x60;promotion_stack&#x60; in the array. Each unique redeemable can be sent in one request only once. | [optional] |
| **order** | [**Order**](Order.md) |  | [optional] |
| **customer** | [**Customer**](Customer.md) |  | [optional] |
| **session** | [**Session**](Session.md) |  | [optional] |
| **tracking_id** | **String** | Is correspondent to Customer&#39;s source_id | [optional] |
| **metadata** | **Object** | A set of key/value pairs that you can attach to a redemption object. It can be useful for storing additional information about the redemption in a structured format. | [optional] |

