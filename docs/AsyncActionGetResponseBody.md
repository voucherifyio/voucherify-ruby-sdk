# VoucherifySdk::AsyncActionGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Async action unique ID. | [optional] |
| **type** | **String** | Type of async action. | [optional] |
| **status** | **String** | Status of the async action. Informs you whether the async action has already been completed. | [optional] |
| **operation_status** | **String** | Status of async action processing. Informs about the async action status, whether it failed, succeeded, or the status is unknown. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the async action was scheduled in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the async action was updated. The value is shown in the ISO 8601 format. | [optional] |
| **request_id** | **String** | Unique request ID. | [optional] |
| **processing_time** | **Integer** | The length of time it took to process the request in milliseconds. | [optional] |
| **progress** | **Integer** | % progress to completion of the asynchronous action. | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the &#x60;async_action&#x60;. | [optional][default to &#39;async_action&#39;] |
| **result** | **Object** |  | [optional] |

