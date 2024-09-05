# VoucherifySdk::LoyaltiesPointsExpirationExportCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique export ID. | [optional] |
| **object** | **String** | The type of object being represented. This object stores information about the export. | [optional][default to &#39;export&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the export was scheduled in ISO 8601 format. | [optional] |
| **status** | **String** | Status of the export. Informs you whether the export has already been completed. | [optional][default to &#39;SCHEDULED&#39;] |
| **channel** | **String** | The channel through which the export was triggered. | [optional] |
| **exported_object** | **String** | The type of exported object. | [optional][default to &#39;points_expiration&#39;] |
| **parameters** | [**LoyaltiesPointsExpirationExportCreateResponseBodyParameters**](LoyaltiesPointsExpirationExportCreateResponseBodyParameters.md) |  | [optional] |
| **result** | **Object** | Always null. | [optional] |
| **user_id** | **String** | &#x60;user_id&#x60; identifies the specific user who initiated the export through the Voucherify Dashboard. &#x60;user_id&#x60; is returned when the channel value is &#x60;WEBSITE&#x60;. | [optional] |

