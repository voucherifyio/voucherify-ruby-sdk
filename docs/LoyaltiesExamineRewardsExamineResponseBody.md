# VoucherifySdk::LoyaltiesExamineRewardsExamineResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**ExamineCustomerReference**](ExamineCustomerReference.md) |  |  |
| **rewards** | [**Array&lt;LoyaltiesExamineRewardsExamineResponseBodyRewardDetail&gt;**](LoyaltiesExamineRewardsExamineResponseBodyRewardDetail.md) | Lists rewards that resolved a points cost and appear on a returned card. Omits a reward when it is inactive, out of stock, has no matching cost, or the member has no card for that cost. | [optional] |
| **memberships** | [**Array&lt;LoyaltiesExamineRewardsExamineResponseBodyMembership&gt;**](LoyaltiesExamineRewardsExamineResponseBodyMembership.md) | Lists one entry for each active membership whose program has reward assignments. &#x60;cards&#x60; can be empty when none of those rewards resolve onto a card. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;rewards_examine_result&#x60;. | [optional][default to &#39;rewards_examine_result&#39;] |

