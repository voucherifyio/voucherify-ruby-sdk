# VoucherifySdk::CardActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Timestamp when the activity was recorded (ISO 8601). | [optional] |
| **group_id** | **String** | ID grouping activities recorded within the same request. | [optional] |
| **source** | [**ActivitySource**](ActivitySource.md) |  | [optional] |
| **id** | **String** | Unique activity ID. | [optional] |
| **card_id** | **String** | ID of the card the activity relates to. | [optional] |
| **type** | **String** | Activity type. Allowed values: &#x60;vl.card.created&#x60;, &#x60;vl.card.assigned&#x60;, &#x60;vl.card.unassigned&#x60;, &#x60;vl.card.code_generation.succeeded&#x60;, and &#x60;vl.card.code_generation.failed&#x60;. | [optional] |
| **data** | [**CardActivityData**](CardActivityData.md) |  | [optional] |

