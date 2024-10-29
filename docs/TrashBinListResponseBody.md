# VoucherifySdk::TrashBinListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the bin entries in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of bin entry objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;TrashBinItem&gt;**](TrashBinItem.md) | Array of bin entry objects. | [optional] |
| **total** | **Integer** | The total number of bin entries. This is the number of the entries returned in the array, not the number of all matching results or all resources currently moved to the bin. | [optional] |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the &#x60;has_more&#x60; flag indicates if there are more records for given filter parameters. This lets you know if you can run another request with a &#x60;starting_after_id&#x60; query or a different limit to get more records returned in the results. | [optional] |
| **more_starting_after** | **String** | If &#x60;has_more&#x60; is &#x60;true&#x60;, it returns an ID that can be used to return another page of results. Use the ID in the &#x60;starting_after_id&#x60; query parameter to display another page of the results occuring after the field with that ID. | [optional] |
