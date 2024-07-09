# VoucherifySdk::CustomersActivitiesListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about customer activities in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of customer activity objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;CustomerActivity&gt;**](CustomerActivity.md) | Array of customer activity objects. | [optional] |
| **total** | **Integer** | Total number of customer activities. | [optional] |

