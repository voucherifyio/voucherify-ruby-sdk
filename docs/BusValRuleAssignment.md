# VoucherifySdk::BusValRuleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for a assignment |  |
| **rule_id** | **String** | The unique identifier for a rule |  |
| **related_object_id** | **String** | The unique identifier for a related object |  |
| **related_object_type** | **String** | The type of related object |  |
| **created_at** | **Time** | Timestamp representing the date and time when the object was created in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the object was last updated in ISO 8601 format. | [optional] |
| **object** | **String** | The type of object represented by JSON. | [default to &#39;validation_rules_assignment&#39;] |
| **validation_status** | **String** | The validation status of the assignment | [optional] |
| **validation_omitted_rules** | **Array&lt;String&gt;** | The list of omitted rules | [optional] |

