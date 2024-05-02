# VoucherifySdk::VoucherTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique transaction ID. |  |
| **source_id** | **String** | The merchant’s transaction ID if it is different from the Voucherify transaction ID. It is really useful in case of an integration between multiple systems. It can be a transaction ID from a CRM system, database or 3rd-party service. In case of a redemption, this value is null. |  |
| **voucher_id** | **String** | Unique voucher ID. |  |
| **campaign_id** | **String** | Unqiue campaign ID of the voucher&#39;s parent campaign if it is part of campaign that generates bulk codes. |  |
| **source** | **String** | The channel through which the transaction took place, whether through the API or the the Dashboard. In case of a redemption, this value is null. |  |
| **reason** | **String** | Reason why the transaction occurred. In case of a redemption, this value is null. |  |
| **type** | [**LoyaltyCardTransactionsType**](LoyaltyCardTransactionsType.md) |  |  |
| **details** | [**VoucherTransactionDetails**](VoucherTransactionDetails.md) |  |  |
| **related_transaction_id** | **String** | The related transaction ID on the receiving card. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the transaction was created in ISO 8601 format. |  |

