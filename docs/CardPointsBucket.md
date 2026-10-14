# VoucherifySdk::CardPointsBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** | ID of the card the bucket belongs to. | [optional] |
| **card_definition_id** | **String** | ID of the card definition of the card. | [optional] |
| **program_id** | **String** | ID of the loyalty program. | [optional] |
| **member_id** | **String** | ID of the member owning the card. | [optional] |
| **created_at** | **Time** | Timestamp when the bucket was created (ISO 8601). | [optional] |
| **updated_at** | **Time** | Timestamp when the bucket was last updated (ISO 8601), or &#x60;null&#x60;. | [optional] |
| **id** | **String** | Unique points expiration bucket ID. | [optional] |
| **customer_id** | **String** | Voucherify ID of the customer owning the card. | [optional] |
| **card_type** | **String** | Card type. Currently, only &#x60;INDIVIDUAL&#x60; is supported. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **points** | [**CardPointsBucketPoints**](CardPointsBucketPoints.md) |  | [optional] |
| **expiration_date** | **Date** | Date when the points in the bucket expire (&#x60;YYYY-MM-DD&#x60;). | [optional] |
| **expiration_type** | **String** | Points expiration type for the bucket. It can be inherited from the card definition or overridden by the earning rule. | [optional] |
| **status** | **String** | Bucket status. For the List card expiring points buckets, returns only &#x60;ACTIVE&#x60; buckets. | [optional] |
| **object** | **String** | Object type marker, always &#x60;card_points_bucket&#x60;. | [optional][default to &#39;card_points_bucket&#39;] |

