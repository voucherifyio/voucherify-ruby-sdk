# VoucherifySdk::LoyaltiesExamineEarningRulesExamineResponseBodyCardEstimation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**ExamineCardReference**](ExamineCardReference.md) |  | [optional] |
| **points_estimation** | **Float** | Total estimated points for the card across matching earning rules. | [optional] |
| **earning_rules** | [**Array&lt;LoyaltiesExamineEarningRulesExamineResponseBodyCardEarningRuleEstimation&gt;**](LoyaltiesExamineEarningRulesExamineResponseBodyCardEarningRuleEstimation.md) | Per-earning-rule estimations contributing to the total. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;card_estimation&#x60;. | [optional][default to &#39;card_estimation&#39;] |

