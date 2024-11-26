# VoucherifySdk::LoyaltiesMembersBalanceUpdateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | The incremental points removed or added to the current balance on the loyalty card. | [optional] |
| **total** | **Integer** | The total of points accrued over the lifetime of the loyalty card. | [optional] |
| **balance** | **Integer** | The balance after adding/removing points. | [optional] |
| **type** | **String** | The type of voucher being modified. | [optional] |
| **object** | **String** | The type of the object represented by JSON. Default is balance. | [optional][default to &#39;balance&#39;] |
| **related_object** | [**LoyaltiesMembersBalanceUpdateResponseBodyRelatedObject**](LoyaltiesMembersBalanceUpdateResponseBodyRelatedObject.md) |  | [optional] |
| **operation_type** | **String** | The type of operation being performed. | [optional] |

