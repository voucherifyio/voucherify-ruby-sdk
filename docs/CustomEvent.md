# VoucherifySdk::CustomEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique custom event ID. | [optional] |
| **object** | **String** | The object represented is an &#x60;event&#x60;. | [default to &#39;event&#39;] |
| **type** | **String** | The event name. |  |
| **customer** | [**SimpleCustomerRequiredObjectType**](SimpleCustomerRequiredObjectType.md) |  |  |
| **referral** | [**CustomEventReferral**](CustomEventReferral.md) |  |  |
| **loyalty** | **Object** |  |  |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a customer. The metadata object stores all custom attributes assigned to the custom event. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the custom event was created in ISO 8601 format. | [optional] |

