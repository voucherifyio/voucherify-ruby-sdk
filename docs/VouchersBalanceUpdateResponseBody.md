# VoucherifySdk::VouchersBalanceUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The incremental amount added (positive integer) or subtracted (negative integer) to the current balance on the gift card or loyalty card. Value is multiplied by 100 to precisely represent 2 decimal places. For example, $100 amount is written as 10000. |  |
| **total** | **Integer** | Total income incurred over the lifespan of the gift card or loyalty card. |  |
| **balance** | **Integer** | The balance after adding or subtracting a specified amount. Value is multiplied by 100 to precisely represent 2 decimal places. For example, $100 amount is written as 10000. |  |
| **type** | **String** | The type of voucher being modified. |  |
| **operation_type** | **String** |  | [default to &#39;MANUAL&#39;] |
| **object** | **String** | The type of object represented by JSON. Default is &#x60;balance&#x60;. | [default to &#39;balance&#39;] |
| **related_object** | [**VouchersBalanceUpdateResponseBodyRelatedObject**](VouchersBalanceUpdateResponseBodyRelatedObject.md) |  |  |

