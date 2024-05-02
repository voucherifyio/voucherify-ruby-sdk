# VoucherifySdk::CustomersPermanentDeletionCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique permanent deletion object ID. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the customer was requested to be deleted in ISO 8601 format. |  |
| **related_object_id** | **String** | Unique customer ID that is being deleted. |  |
| **related_object** | **String** | Object being deleted. | [default to &#39;customer&#39;] |
| **status** | **String** | Deletion status. | [default to &#39;DONE&#39;] |
| **data_json** | [**CustomersPermanentDeletionCreateResponseBodyDataJson**](CustomersPermanentDeletionCreateResponseBodyDataJson.md) |  |  |
| **object** | **String** | The type of object represented by JSON. | [default to &#39;pernament_deletion&#39;] |

