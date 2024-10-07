# VoucherifySdk::ManagementProjectsWebhooksGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the webhook. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;webhook&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the webhook configuration was created. The value for this parameter is shown in the ISO 8601 format. | [optional] |
| **target_url** | **String** | URL address that receives webhooks. | [optional] |
| **events** | **Array&lt;String&gt;** | Lists the events that trigger webhook sendout. | [optional] |
| **active** | **Boolean** | Determines if the webhook configuration is active. | [optional][default to true] |

