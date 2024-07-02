# VoucherifySdk::PromotionStack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Promotion stack name. |  |
| **tiers** | [**PromotionStackBaseTiers**](PromotionStackBaseTiers.md) |  |  |
| **id** | **String** | Unique promotion stack ID. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the promotion stack was created. The value is shown in the ISO 8601 format. |  |
| **updated_at** | **Time** | Timestamp representing the date and time when the promotion stack was updated. The value is shown in the ISO 8601 format. | [optional] |
| **campaign_id** | **String** | Promotion stack&#39;s parent campaign&#39;s unique ID. |  |
| **object** | **String** | The type of the object represented by JSON.  | [default to &#39;promotion_stack&#39;] |
| **category_id** | **String** | Promotion stack category ID. |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Details about the category assigned to the promotion stack. |  |

