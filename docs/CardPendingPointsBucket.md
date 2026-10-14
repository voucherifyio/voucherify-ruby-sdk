# VoucherifySdk::CardPendingPointsBucket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** | ID of the card the bucket belongs to. | [optional] |
| **card_definition_id** | **String** | ID of the card definition of the card. | [optional] |
| **program_id** | **String** | ID of the loyalty program. | [optional] |
| **member_id** | **String** | ID of the member owning the card. | [optional] |
| **created_at** | **Time** | Timestamp when the bucket was created (ISO 8601). | [optional] |
| **updated_at** | **Time** | Timestamp when the bucket was last updated (ISO 8601), or &#x60;null&#x60;. | [optional] |
| **id** | **String** | Unique pending point bucket ID. | [optional] |
| **card_type** | **String** | Card type. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **points** | [**CardPendingPointsBucketPoints**](CardPendingPointsBucketPoints.md) |  | [optional] |
| **date** | **Date** | Scheduled activation date of the pending points (&#x60;YYYY-MM-DD&#x60;). For the &#x60;EVENT_BASED&#x60; type this is the cancellation deadline. | [optional] |
| **type** | **String** | Pending points activation type from the card definition. | [optional] |
| **status** | **String** | Bucket status. | [optional] |
| **object** | **String** | Object type marker, always &#x60;card_pending_points_bucket&#x60;. | [optional][default to &#39;card_pending_points_bucket&#39;] |

