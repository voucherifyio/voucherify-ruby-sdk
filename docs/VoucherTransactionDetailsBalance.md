# VoucherifySdk::VoucherTransactionDetailsBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of voucher whose balance is being adjusted due to the transaction. | [optional] |
| **total** | **Integer** | The number of all points or credits accumulated on the card as affected by add or subtract operations. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. | [optional][default to &#39;balance&#39;] |
| **points** | **Integer** | Points added or subtracted in the transaction of a loyalty card. | [optional] |
| **balance** | **Integer** | The available points or credits on the card after the transaction as affected by redemption or rollback. | [optional] |
| **operation_type** | **String** | The type of the operation being performed. The operation type is &#x60;AUTOMATIC&#x60; if it is an automatic redemption. | [optional] |
| **related_object** | [**VoucherTransactionDetailsBalanceRelatedObject**](VoucherTransactionDetailsBalanceRelatedObject.md) |  | [optional] |

