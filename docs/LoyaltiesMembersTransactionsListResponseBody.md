# VoucherifySdk::LoyaltiesMembersTransactionsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of object represented by JSON. | [default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of transaction objects. | [default to &#39;data&#39;] |
| **data** | [**Array&lt;LoyaltyCardTransaction&gt;**](LoyaltyCardTransaction.md) | A dictionary that contains an array of transactions. Each entry in the array is a separate transaction object. |  |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the has_more flag indicates whether there are more records for given filter parameters. This let&#39;s you know if you are able to run another request (with a different page or a different start date filter) to get more records returned in the results. |  |

