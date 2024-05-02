# VoucherifySdk::Reward

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique reward ID, assigned by Voucherify. |  |
| **name** | **String** | Reward name. |  |
| **stock** | **Integer** | Configurable for **material rewards**. The number of units of the product that you want to share as reward. |  |
| **redeemed** | **Integer** | Defines the number of already invoked (successful) reward redemptions.  |  |
| **attributes** | [**RewardAttributes**](RewardAttributes.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the reward. A set of key/value pairs that you can attach to a reward object. It can be useful for storing additional information about the reward in a structured format. |  |
| **type** | **String** | Reward type. |  |
| **parameters** | [**RewardType**](RewardType.md) |  | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the reward was created in ISO 8601 format. |  |
| **updated_at** | **Time** | Timestamp representing the date and time when the reward was updated in ISO 8601 format. |  |
| **object** | **String** | The type of object represented by the JSON. This object stores information about the reward. | [default to &#39;reward&#39;] |

