# VoucherifySdk::LoyaltiesMembersBalanceUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | The incremental points removed or added to the current balance on the loyalty card. |  |
| **total** | **Integer** | The total of points accrued over the lifetime of the loyalty card. |  |
| **balance** | **Integer** | The balance after adding/removing points. |  |
| **type** | **String** | The type of voucher being modified. |  |
| **object** | **String** | The type of object represented by JSON. Default is balance. | [default to &#39;balance&#39;] |
| **related_object** | [**LoyaltiesMembersBalanceUpdateResponseBodyRelatedObject**](LoyaltiesMembersBalanceUpdateResponseBodyRelatedObject.md) |  |  |
| **operation_type** | **String** |  | [optional] |

