# VoucherifySdk::QualificationsRedeemables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of object represented by JSON. Default is &#x60;list&#x60;. | [default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of qualified redeemables. | [default to &#39;data&#39;] |
| **data** | [**Array&lt;QualificationsRedeemable&gt;**](QualificationsRedeemable.md) | Array of qualified redeemables. |  |
| **total** | **Integer** | The number of redeemables returned in the API request. |  |
| **has_more** | **Boolean** | As results are always limited, the &#x60;has_more&#x60; flag indicates whether there are more records for given parameters. This let&#39;s you know if you are able to run another request (with different options) to get more records returned in the results. |  |
| **more_starting_after** | **Time** | Timestamp representing the date and time to use in starting_after cursor to get more redeemables. | [optional] |

