# VoucherifySdk::LoyaltiesRewardAssignmentsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about loyalty reward assignments in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of reward assignment objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;RewardAssignment&gt;**](RewardAssignment.md) | Contains array of reward assignment objects. | [optional] |
| **total** | **Integer** | Total number of reward assignment objects. | [optional] |

