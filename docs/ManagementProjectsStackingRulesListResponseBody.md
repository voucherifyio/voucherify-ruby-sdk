# VoucherifySdk::ManagementProjectsStackingRulesListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the stacking rules in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of stacking rule objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;ManagementProjectsStackingRules&gt;**](ManagementProjectsStackingRules.md) | Array of only one stacking rule object. | [optional] |
| **total** | **Integer** | The total number of stacking rule objects. It is always 1. | [optional] |

