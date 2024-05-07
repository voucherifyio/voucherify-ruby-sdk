# VoucherifySdk::VoucherTransactionDetailsBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of voucher whose balance is being adjusted due to the transaction. | [default to &#39;loyalty_card&#39;] |
| **total** | **Integer** | The available points prior to the transaction. |  |
| **object** | **String** | The type of object represented by the JSON. | [default to &#39;balance&#39;] |
| **points** | **Integer** | The amount of points being used up in the transaction. |  |
| **balance** | **Integer** | The points balance on the loyalty card after the points in the transaction are subtracted from the loyalty card. |  |
| **related_object** | [**VoucherTransactionDetailsBalanceRelatedObject**](VoucherTransactionDetailsBalanceRelatedObject.md) |  |  |

