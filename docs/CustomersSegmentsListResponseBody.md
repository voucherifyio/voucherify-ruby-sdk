# VoucherifySdk::CustomersSegmentsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about customer segments. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the JSON property that contains the array of segment IDs. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;SimpleSegment&gt;**](SimpleSegment.md) | A dictionary that contains an array of segment IDs and names. | [optional] |
| **total** | **Integer** | Total number of segments the customer belongs to. | [optional] |

