# VoucherifySdk::OrderRedemptionsEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format. | [optional] |
| **rollback_id** | **String** | Unique ID of the redemption rollback. | [optional] |
| **rollback_date** | **Time** | Timestamp representing the date and time when the redemption rollback was created. The value is shown in the ISO 8601 format. | [optional] |
| **related_object_type** | **String** | The source of the incentive. | [optional][default to &#39;redemption&#39;] |
| **related_object_id** | **String** | Unique ID of the parent redemption. | [optional] |
| **related_object_parent_id** | **String** | Represent&#39;s the campaign ID of the voucher if the redemption was based on a voucher that was part of bulk codes generated within a campaign. In case of a promotion tier, this represents the campaign ID of the promotion tier&#39;s parent campaign. | [optional] |
| **stacked** | **Array&lt;String&gt;** | Contains a list of unique IDs of child redemptions, which belong to the stacked incentives. | [optional] |
| **rollback_stacked** | **Array&lt;String&gt;** | Lists the rollback redemption IDs of the particular child redemptions. | [optional] |

