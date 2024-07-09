# VoucherifySdk::VoucherTransactionDetailsBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of voucher whose balance is being adjusted due to the transaction. | [default to &#39;loyalty_card&#39;] |
| **total** | **Integer** | The number of all points accumulated on the card as affected by add or subtract operations. |  |
| **object** | **String** | The type of the object represented by the JSON. | [default to &#39;balance&#39;] |
| **points** | **Integer** | Points added or subtracted in the transaction. |  |
| **balance** | **Integer** | The available points on the card after the transaction as affected by redemption or rollback. |  |
| **related_object** | [**VoucherTransactionDetailsBalanceRelatedObject**](VoucherTransactionDetailsBalanceRelatedObject.md) |  |  |

