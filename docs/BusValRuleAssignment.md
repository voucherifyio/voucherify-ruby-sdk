# VoucherifySdk::BusValRuleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for a assignment | [optional] |
| **rule_id** | **String** | The unique identifier for a rule | [optional] |
| **related_object_id** | **String** | The unique identifier for a related object | [optional] |
| **related_object_type** | **String** | The type of related object | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the object was last updated in ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;validation_rules_assignment&#39;] |
| **validation_status** | **String** | The validation status of the assignment | [optional] |
| **validation_omitted_rules** | **Array&lt;String&gt;** | The list of omitted rules | [optional] |

