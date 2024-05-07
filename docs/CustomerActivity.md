# VoucherifySdk::CustomerActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique event ID, assigned by Voucherify. | [optional] |
| **type** | **String** | Event type. | [optional] |
| **data** | [**Array&lt;CustomerActivityData&gt;**](CustomerActivityData.md) | Contains details about the event. The objects that are returned in the data attribute differ based on the context of the event type. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the customer activity occurred in ISO 8601 format. | [optional] |

