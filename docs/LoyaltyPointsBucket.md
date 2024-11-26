# VoucherifySdk::LoyaltyPointsBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the loyalty points bucket. | [optional] |
| **voucher_id** | **String** | Unique identifier of the parent loyalty card. | [optional] |
| **campaign_id** | **String** | Unique identifier of the parent campaign. | [optional] |
| **bucket** | [**LoyaltyPointsBucketBucket**](LoyaltyPointsBucketBucket.md) |  | [optional] |
| **status** | **String** | Loyalty point point bucket status. | [optional] |
| **expires_at** | **Time** | Date when the number of points defined in the bucket object are due to expire. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the loyalty point bucket object was created in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the loyalty point bucket object was updated in ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the loyalty point bucket. | [optional][default to &#39;loyalty_points_bucket&#39;] |

