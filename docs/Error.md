# VoucherifySdk::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Error&#39;s HTTP status code. |  |
| **key** | **String** | Short string describing the kind of error which occurred. |  |
| **message** | **String** | A human-readable message providing a short description about the error. |  |
| **details** | **String** | A human-readable message providing more details about the error. |  |
| **request_id** | **String** | This ID is useful when troubleshooting and/or finding the root cause of an error response by our support team. |  |
| **resource_id** | **String** | Unique resource ID that can be used in another endpoint to get more details. | [optional] |
| **resource_type** | **String** | The resource type. | [optional] |

