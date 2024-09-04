# VoucherifySdk::PromotionsStacksCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Promotion stack name. | [optional] |
| **tiers** | [**PromotionsStacksCreateResponseBodyTiers**](PromotionsStacksCreateResponseBodyTiers.md) |  | [optional] |
| **id** | **String** | Unique promotion stack ID. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the promotion stack was created. The value is shown in the ISO 8601 format. | [optional] |
| **campaign_id** | **String** | Promotion stack&#39;s parent campaign&#39;s unique ID. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;promotion_stack&#39;] |
| **category_id** | **String** | Promotion stack category ID. | [optional] |
| **categories** | [**Array&lt;PromotionStackBase&gt;**](PromotionStackBase.md) | Details about the category assigned to the promotion stack. | [optional] |

