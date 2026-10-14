# VoucherifySdk::ProgramRewardAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | Unique reward identifier. | [optional] |
| **stock** | [**ProgramRewardAssignmentStock**](ProgramRewardAssignmentStock.md) |  |  |
| **redeemed** | **Float** | Number of times the reward has been redeemed within the program. Defaults to 0. | [optional] |
| **created_at** | **Time** | Assignment creation timestamp (ISO 8601). | [optional] |
| **updated_at** | **Time** | Last update timestamp (ISO 8601), or &#x60;null&#x60; when never updated. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_reward&#x60;. | [optional][default to &#39;program_reward&#39;] |

