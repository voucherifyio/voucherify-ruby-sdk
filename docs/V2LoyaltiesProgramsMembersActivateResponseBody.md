# VoucherifySdk::V2LoyaltiesProgramsMembersActivateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the member. | [optional] |
| **customer_id** | **String** | Identifies the enrolled customer. | [optional] |
| **program_id** | **String** | Identifies the loyalty program. | [optional] |
| **status** | **String** | Current member status. Allowed values: &#x60;ACTIVE&#x60;, &#x60;INACTIVE&#x60;, &#x60;DELETED&#x60;. &#x60;INACTIVE&#x60; members cannot earn points or redeem rewards. | [optional] |
| **metadata** | **Object** | Stores custom member metadata. Empty object when none is set. | [optional] |
| **created_at** | **Time** | Records when the member was created (ISO 8601). | [optional] |
| **updated_at** | **Time** | Records the last update (ISO 8601). &#x60;null&#x60; if the member has never been updated. | [optional] |
| **object** | **String** | Object type. Always &#x60;member&#x60;. | [optional][default to &#39;member&#39;] |

