# VoucherifySdk::RewardTypeLoyaltyPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | Number of points to credit. Must be greater than &#x60;0&#x60;. | [optional] |
| **program_id** | **String** | Unique &#x60;v2/loyalties&#x60; (loyalty hub) program ID, assigned by Voucherify. | [optional] |
| **card_definition_id** | **String** | Unique card definition ID of the &#x60;v2/loyalties&#x60; (loyalty hub) card that receives the points. | [optional] |
| **on_missing_member** | **String** | Action when the customer is not a member of the program. &#x60;ENROLL&#x60; enrolls the customer and credits the points. &#x60;REJECT&#x60; rejects the award and the customer is not enrolled. | [optional] |

