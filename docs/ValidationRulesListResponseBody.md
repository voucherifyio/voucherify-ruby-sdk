# VoucherifySdk::ValidationRulesListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about validation rules. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of validation rules. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;ValidationRule&gt;**](ValidationRule.md) | An array of validation rules. | [optional] |
| **total** | **Integer** | Total number of validation rules in the project. | [optional] |

