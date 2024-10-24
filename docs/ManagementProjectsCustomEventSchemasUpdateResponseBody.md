# VoucherifySdk::ManagementProjectsCustomEventSchemasUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the custom event schema. | [optional] |
| **name** | **String** | User-defined name of the custom event. This is also shown in **Project Settings** &gt; **Event Schema** in the Voucherify Dashboard. | [optional] |
| **schema** | [**ManagementProjectsCustomEventSchemasUpdateResponseBodySchema**](ManagementProjectsCustomEventSchemasUpdateResponseBodySchema.md) |  | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the custom event schema was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the custom event schema was updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;custom-event-schema&#39;] |

