# VoucherifySdk::SegmentsCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique segment ID. | [optional] |
| **name** | **String** | Segment name. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the segment was created. The value is shown in the ISO 8601 format. | [optional] |
| **type** | **String** | Describes whether the segment is dynamic (customers come in and leave based on set criteria) or static (manually selected customers). | [optional] |
| **filter** | **Object** | Defines a set of criteria for an &#x60;auto-update&#x60; segment type.   | [optional] |
| **initial_sync_status** | **String** |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the customer segment. | [optional][default to &#39;segment&#39;] |

