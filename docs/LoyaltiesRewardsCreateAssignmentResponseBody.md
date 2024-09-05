# VoucherifySdk::LoyaltiesRewardsCreateAssignmentResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique reward assignment ID, assigned by Voucherify. | [optional] |
| **reward_id** | **String** | Associated reward ID. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the reward assignment was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the reward assignment was updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the reward assignment. | [optional][default to &#39;reward_assignment&#39;] |
| **related_object_id** | **String** | Related object ID to which the reward was assigned. | [optional] |
| **related_object_type** | **String** | Related object type to which the reward was assigned. | [optional][default to &#39;campaign&#39;] |
| **parameters** | [**LoyaltiesRewardsCreateAssignmentResponseBodyParameters**](LoyaltiesRewardsCreateAssignmentResponseBodyParameters.md) |  | [optional] |

