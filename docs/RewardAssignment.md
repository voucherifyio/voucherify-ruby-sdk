# VoucherifySdk::RewardAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique reward assignment ID, assigned by Voucherify. | [optional] |
| **reward_id** | **String** | Associated reward ID. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the reward assignment was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the reward assignment was updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the reward assignment. | [optional][default to &#39;reward_assignment&#39;] |
| **related_object_id** | **String** | Related object ID to which the reward was assigned. For &#x60;related_object_type&#x60; &#x60;campaign&#x60;, this is the campaign ID. For &#x60;referral_tier&#x60;, this is the referral tier ID. | [optional] |
| **related_object_type** | **String** | Related object type to which the reward was assigned. Use &#x60;campaign&#x60; for **legacy loyalty** campaign rewards. Use &#x60;referral_tier&#x60; for &#x60;LOYALTY_POINTS&#x60; rewards that credit a &#x60;v2/loyalties&#x60; (loyalty hub) card from a referral tier. A &#x60;LOYALTY_POINTS&#x60; reward can only be assigned to a referral tier. | [optional][default to &#39;campaign&#39;] |
| **parameters** | [**RewardAssignmentParameters**](RewardAssignmentParameters.md) |  | [optional] |

