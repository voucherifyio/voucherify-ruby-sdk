# VoucherifySdk::V2LoyaltiesProgramsMembersCardsPointsAdjustResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | [**CardTransaction**](CardTransaction.md) |  | [optional] |
| **status** | **String** | &#x60;TRANSACTION_CREATED&#x60; when a transaction was created, &#x60;NO_CHANGE&#x60; when the requested points amount was zero. | [optional] |
| **message** | **String** | Human-readable result message: - \&quot;Points addition transaction created\&quot;, - \&quot;Points subtraction transaction created\&quot;, - \&quot;Provided amount is zero, transaction was not created\&quot;. | [optional] |

