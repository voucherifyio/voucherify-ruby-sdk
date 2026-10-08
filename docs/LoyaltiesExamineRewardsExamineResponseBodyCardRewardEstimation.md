# VoucherifySdk::LoyaltiesExamineRewardsExamineResponseBodyCardRewardEstimation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward** | [**LoyaltiesExamineRewardsExamineResponseBodyRewardReference**](LoyaltiesExamineRewardsExamineResponseBodyRewardReference.md) |  |  |
| **status** | **String** | Whether the reward can currently be obtained with this card. | [optional] |
| **cost** | [**LoyaltiesExamineRewardsExamineResponseBodyRewardCost**](LoyaltiesExamineRewardsExamineResponseBodyRewardCost.md) |  |  |
| **unavailability_reasons** | [**Array&lt;LoyaltiesExamineRewardsExamineResponseBodyRewardUnavailabilityReason&gt;**](LoyaltiesExamineRewardsExamineResponseBodyRewardUnavailabilityReason.md) | Reasons the reward is unavailable. Absent when the reward is available. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;reward_estimation&#x60;. | [optional][default to &#39;reward_estimation&#39;] |

