# VoucherifySdk::VouchersBalanceUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The incremental amount added (positive integer) or subtracted (negative integer) to the current balance on the gift card or loyalty card. Value is multiplied by 100 to precisely represent 2 decimal places. For example, $100 amount is written as 10000. | [optional] |
| **total** | **Integer** | Total income incurred over the lifespan of the gift card or loyalty card. | [optional] |
| **balance** | **Integer** | The balance after adding or subtracting a specified amount. Value is multiplied by 100 to precisely represent 2 decimal places. For example, $100 amount is written as 10000. | [optional] |
| **type** | **String** | The type of voucher being modified. | [optional] |
| **operation_type** | **String** | The type of the operation being performed. | [optional][default to &#39;MANUAL&#39;] |
| **object** | **String** | The type of the object represented by JSON. Default is &#x60;balance&#x60;. | [optional][default to &#39;balance&#39;] |
| **related_object** | [**VouchersBalanceUpdateResponseBodyRelatedObject**](VouchersBalanceUpdateResponseBodyRelatedObject.md) |  | [optional] |

