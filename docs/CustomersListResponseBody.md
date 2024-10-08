# VoucherifySdk::CustomersListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about customers in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of customer objects. | [optional][default to &#39;customers&#39;] |
| **customers** | [**Array&lt;CustomerWithSummaryLoyaltyReferrals&gt;**](CustomerWithSummaryLoyaltyReferrals.md) | Contains array of customer objects. | [optional] |
| **total** | **Integer** | Total number of customers. | [optional] |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the &#x60;has_more&#x60; flag indicates if there are more records for given filter parameters. This lets you know if you can run another request (with a different end date filter) to get more records returned in the results. | [optional] |

