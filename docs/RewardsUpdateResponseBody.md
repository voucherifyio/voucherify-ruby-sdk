# VoucherifySdk::RewardsUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique reward ID, assigned by Voucherify. | [optional] |
| **name** | **String** | Reward name. | [optional] |
| **stock** | **Integer** | Configurable for **material rewards**. The number of units of the product that you want to share as reward. | [optional] |
| **redeemed** | **Integer** | Defines the number of already invoked (successful) reward redemptions.  | [optional] |
| **attributes** | [**RewardsUpdateResponseBodyAttributes**](RewardsUpdateResponseBodyAttributes.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the reward. A set of key/value pairs that you can attach to a reward object. It can be useful for storing additional information about the reward in a structured format. | [optional] |
| **type** | **String** | Reward type. | [optional] |
| **parameters** | [**RewardType**](RewardType.md) |  | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the reward was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the reward was updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the reward. | [default to &#39;reward&#39;] |

