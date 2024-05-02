# VoucherifySdk::LoyaltiesMembersPointsExpirationListResponseBodyDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique loyalty points bucket ID. |  |
| **voucher_id** | **String** | Unique parent loyalty card ID. |  |
| **campaign_id** | **String** |  Unique parent campaign ID. |  |
| **bucket** | [**LoyaltiesMembersPointsExpirationListResponseBodyDataItemBucket**](LoyaltiesMembersPointsExpirationListResponseBodyDataItemBucket.md) |  |  |
| **created_at** | **Time** | Timestamp representing the date and time when the loyalty points bucket object was created in ISO 8601 format. |  |
| **status** | **String** | Loyalty points bucket point status. |  |
| **expires_at** | **Time** | Date when the number of points defined in the bucket object are due to expire. |  |
| **updated_at** | **Time** | Timestamp representing the date and time when the loyalty points bucket object was updated in ISO 8601 format. | [optional] |
| **object** | **String** | The type of object represented by JSON. This object stores information about the loyalty points bucket. | [default to &#39;loyalty_points_bucket&#39;] |

