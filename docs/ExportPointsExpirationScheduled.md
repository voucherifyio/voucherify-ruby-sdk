# VoucherifySdk::ExportPointsExpirationScheduled

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique export ID. |  |
| **object** | **String** | The type of object being represented. This object stores information about the export. | [default to &#39;export&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the export was scheduled in ISO 8601 format. |  |
| **status** | **String** | Status of the export. Informs you whether the export has already been completed, i.e. indicates whether the file containing the exported data has been generated. | [default to &#39;SCHEDULED&#39;] |
| **channel** | **String** | The channel through which the export was triggered. | [optional] |
| **result** | **Object** | Contains the URL of the CSV file. |  |
| **user_id** | **String** | Identifies the specific user who initiated the export through the Voucherify Dashboard; returned when the channel value is WEBSITE. |  |
| **exported_object** | **String** | The type of object to be exported. | [default to &#39;points_expiration&#39;] |
| **parameters** | [**ExportPointsExpirationBaseParameters**](ExportPointsExpirationBaseParameters.md) |  | [optional] |

