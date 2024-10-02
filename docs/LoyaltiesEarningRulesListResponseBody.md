# VoucherifySdk::LoyaltiesEarningRulesListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about earning rules in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of earning rule objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;EarningRule&gt;**](EarningRule.md) | Contains array of earning rule objects. | [optional] |
| **total** | **Integer** | Total number of earning rule objects. | [optional] |
