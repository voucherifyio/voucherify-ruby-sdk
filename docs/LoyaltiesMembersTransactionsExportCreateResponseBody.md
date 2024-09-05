# VoucherifySdk::LoyaltiesMembersTransactionsExportCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique export ID. | [optional] |
| **object** | **String** | The type of object being represented. This object stores information about the export. | [optional][default to &#39;export&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the export was scheduled in ISO 8601 format. | [optional] |
| **status** | **String** | Status of the export. Informs you whether the export has already been completed, i.e. indicates whether the file containing the exported data has been generated. | [optional][default to &#39;SCHEDULED&#39;] |
| **channel** | **String** | The channel through which the export was triggered. | [optional] |
| **result** | **Object** | Contains the URL of the CSV file. | [optional] |
| **user_id** | **String** | Identifies the specific user who initiated the export through the Voucherify Dashboard; returned when the channel value is WEBSITE. | [optional] |
| **exported_object** | **String** | The type of object to be exported. | [optional][default to &#39;voucher_transactions&#39;] |
| **parameters** | [**LoyaltiesMembersTransactionsExportCreateResponseBodyParameters**](LoyaltiesMembersTransactionsExportCreateResponseBodyParameters.md) |  | [optional] |

