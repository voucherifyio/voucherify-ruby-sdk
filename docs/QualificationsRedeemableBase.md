# VoucherifySdk::QualificationsRedeemableBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the redeemable. | [optional] |
| **object** | **String** | Object type of the redeemable. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. | [optional] |
| **result** | [**RedeemableResult**](RedeemableResult.md) |  | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **validation_rule_id** | **String** | A unique validation rule identifier assigned by the Voucherify API. The validation rule is verified before points are added to the balance. | [optional] |
| **applicable_to** | [**ApplicableToResultList**](ApplicableToResultList.md) |  | [optional] |
| **inapplicable_to** | [**InapplicableToResultList**](InapplicableToResultList.md) |  | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the product. A set of key/value pairs that you can attach to a product object. It can be useful for storing additional information about the product in a structured format. | [optional] |
| **categories** | [**Array&lt;CategoryWithStackingRulesType&gt;**](CategoryWithStackingRulesType.md) | List of category information. | [optional] |
| **banner** | **String** | Name of the earning rule. This is displayed as a header for the earning rule in the Dashboard. | [optional] |
| **name** | **String** | Name of the redeemable. | [optional] |
| **campaign_name** | **String** | Name of the campaign associated to the redeemable. This field is available only if object is not &#x60;campaign&#x60; | [optional] |
| **campaign_id** | **String** | Id of the campaign associated to the redeemable. This field is available only if object is not &#x60;campaign&#x60; | [optional] |
| **validation_rules_assignments** | [**ValidationRulesAssignmentsList**](ValidationRulesAssignmentsList.md) |  | [optional] |

