# VoucherifySdk::V2LoyaltiesRewardsGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique reward identifier, prefixed with &#x60;lrew_&#x60;. | [optional] |
| **name** | **String** | Display name of the reward. | [optional] |
| **type** | **String** | Reward type. | [optional] |
| **status** | **String** | Current lifecycle status of the reward. | [optional] |
| **start_date** | **Time** | Date from which the reward is available, or &#x60;null&#x60; when not set. | [optional] |
| **end_date** | **Time** | Date until which the reward is available, or &#x60;null&#x60; when not set. | [optional] |
| **validity_hours** | [**RewardValidityHoursResponse**](RewardValidityHoursResponse.md) |  |  |
| **material** | [**RewardMaterialResponse**](RewardMaterialResponse.md) |  | [optional] |
| **digital** | [**RewardDigitalResponse**](RewardDigitalResponse.md) |  | [optional] |
| **refunds** | [**LoyaltyV2ActivityRewardRefunds**](LoyaltyV2ActivityRewardRefunds.md) |  |  |
| **costs** | [**Array&lt;RewardCostResponse&gt;**](RewardCostResponse.md) | Point costs of the reward. Empty array when no costs are defined. | [optional] |
| **purchase_limits** | [**RewardPurchaseLimits**](RewardPurchaseLimits.md) |  |  |
| **metadata** | **Object** | Arbitrary key-value metadata attached to the reward. Empty object when not set. | [optional] |
| **created_at** | **Time** | Timestamp when the reward was created (ISO-8601). | [optional] |
| **updated_at** | **Time** | Timestamp when the reward was last updated (ISO-8601), or &#x60;null&#x60; when never updated. | [optional] |
| **object** | **String** | Object type marker; always &#x60;reward&#x60;. | [optional][default to &#39;reward&#39;] |

