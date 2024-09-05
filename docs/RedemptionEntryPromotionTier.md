# VoucherifySdk::RedemptionEntryPromotionTier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique promotion tier ID. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the promotion tier was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the promotion tier was updated. The value is shown in the ISO 8601 format. | [optional] |
| **name** | **String** | Name of the promotion tier. | [optional] |
| **banner** | **String** | Text to be displayed to your customers on your website. | [optional] |
| **action** | [**RedemptionEntryPromotionTierAction**](RedemptionEntryPromotionTierAction.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **hierarchy** | **Integer** | The promotions hierarchy defines the order in which the discounts from different tiers will be applied to a customer&#39;s order. If a customer qualifies for discounts from more than one tier, discounts will be applied in the order defined in the hierarchy. | [optional] |
| **promotion_id** | **String** | Promotion unique ID. | [optional] |
| **campaign** | [**RedemptionEntryPromotionTierCampaign**](RedemptionEntryPromotionTierCampaign.md) |  | [optional] |
| **campaign_id** | **String** | Promotion tier&#39;s parent campaign&#39;s unique ID. | [optional] |
| **active** | **Boolean** | A flag to toggle the promotion tier on or off. You can disable a promotion tier even though it&#39;s within the active period defined by the &#x60;start_date&#x60; and &#x60;expiration_date&#x60;.    - &#x60;true&#x60; indicates an *active* promotion tier - &#x60;false&#x60; indicates an *inactive* promotion tier | [optional] |
| **start_date** | **Time** | Activation timestamp defines when the promotion tier starts to be active in ISO 8601 format. Promotion tier is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Activation timestamp defines when the promotion tier expires in ISO 8601 format. Promotion tier is *inactive after* this date.  | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **summary** | [**RedemptionEntryPromotionTierSummary**](RedemptionEntryPromotionTierSummary.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the promotion tier. | [optional][default to &#39;promotion_tier&#39;] |
| **validation_rule_assignments** | [**ValidationRuleAssignmentsList**](ValidationRuleAssignmentsList.md) |  | [optional] |
| **category_id** | **String** | Promotion tier category ID. | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) |  | [optional] |

