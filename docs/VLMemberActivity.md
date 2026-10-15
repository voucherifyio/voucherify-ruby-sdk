# VoucherifySdk::VLMemberActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Timestamp when the activity was recorded (ISO 8601). | [optional] |
| **group_id** | **String** | ID grouping activities recorded within the same request. | [optional] |
| **source** | [**ActivitySource**](ActivitySource.md) |  | [optional] |
| **id** | **String** | Unique activity ID. | [optional] |
| **member_id** | **String** | ID of the member the activity relates to. | [optional] |
| **type** | **String** | Activity type. Allowed values: &#x60;vl.member.created&#x60;, &#x60;vl.member.updated&#x60;, &#x60;vl.member.deleted&#x60;, &#x60;vl.member.activated&#x60;, &#x60;vl.member.deactivated&#x60;, &#x60;vl.member.card.assigned&#x60;, and &#x60;vl.member.card.unassigned&#x60;. | [optional] |
| **data** | [**VLMemberActivityData**](VLMemberActivityData.md) |  | [optional] |

