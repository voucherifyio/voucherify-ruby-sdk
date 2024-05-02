# VoucherifySdk::VouchersTransactionsExportCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique export ID. |  |
| **object** | **String** | The type of object being represented. This object stores information about the &#x60;export&#x60;. | [default to &#39;export&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the export was scheduled in ISO 8601 format. |  |
| **status** | **String** | Status of the export. Informs you whether the export has already been completed, i.e. indicates whether the file containing the exported data has been generated. | [default to &#39;SCHEDULED&#39;] |
| **channel** | **String** | The channel through which the export was triggered. | [default to &#39;API&#39;] |
| **exported_object** | **String** | The type of exported object. | [default to &#39;voucher_transactions&#39;] |
| **parameters** | [**VoucherTransactionsFilters**](VoucherTransactionsFilters.md) |  |  |
| **result** | [**VoucherTransactionsExportResult**](VoucherTransactionsExportResult.md) |  |  |
| **user_id** | **String** | Identifies the specific user who initiated the export through the Voucherify Dashboard; returned when the &#x60;channel&#x60; value is &#x60;WEBSITE&#x60;. |  |

