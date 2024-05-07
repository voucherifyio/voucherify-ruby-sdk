# VoucherifySdk::PromotionsStacksCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Promotion stack name. |  |
| **tiers** | [**PromotionStackBaseTiers**](PromotionStackBaseTiers.md) |  |  |
| **id** | **String** | Unique promotion stack ID. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the promotion stack was created in ISO 8601 format. |  |
| **campaign_id** | **String** | Promotion stack&#39;s parent campaign&#39;s unique ID. |  |
| **object** | **String** | The type of object represented by JSON. | [default to &#39;promotion_stack&#39;] |
| **category_id** | **String** | Promotion stack category ID. |  |
| **categories** | [**Array&lt;PromotionStackBase&gt;**](PromotionStackBase.md) | Details about the category assigned to the promotion stack. |  |

