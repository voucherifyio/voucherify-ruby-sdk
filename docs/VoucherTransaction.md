# VoucherifySdk::VoucherTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique transaction ID. | [optional] |
| **source_id** | **String** | The merchant&#39;s transaction ID if it is different from the Voucherify transaction ID. It is really useful in case of an integration between multiple systems. It can be a transaction ID from a CRM system, database or 3rd-party service. In case of a redemption, this value is null. | [optional] |
| **voucher_id** | **String** | Unique voucher ID. | [optional] |
| **campaign_id** | **String** | Unqiue campaign ID of the voucher&#39;s parent campaign if it is part of campaign that generates bulk codes. | [optional] |
| **source** | **String** | The channel through which the transaction took place, whether through the API or the the Dashboard. In case of a redemption, this value is null. | [optional] |
| **reason** | **String** | Reason why the transaction occurred. In case of a redemption, this value is null. | [optional] |
| **related_transaction_id** | **String** | The related transaction ID on the receiving card. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the transaction was created. The value is shown in the ISO 8601 format. | [optional] |
| **details** | [**VoucherTransactionDetails**](VoucherTransactionDetails.md) |  | [optional] |
| **type** | **String** |  | [optional] |

