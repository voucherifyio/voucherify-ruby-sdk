# VoucherifySdk::LoyaltiesMemberActivityListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about member activities in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of member activity objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;MemberActivity&gt;**](MemberActivity.md) | Array of member activity objects. | [optional] |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the &#x60;has_more&#x60; flag indicates if there are more records for given filter parameters. This lets you know if you can run another request with a &#x60;starting_after_id&#x60; query or a different limit to get more records returned in the results. | [optional] |
| **more_starting_after** | **String** | Returns an ID that can be used to return another page of results. Use the event ID in the &#x60;starting_after_id&#x60; query parameter to display another page of the results starting after the event with that ID. | [optional] |
