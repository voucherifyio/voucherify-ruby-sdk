# VoucherifySdk::LoyaltiesMembersPointsExpirationListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about loyalty points expiration buckets in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of loyalty points expiration bucket objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;LoyaltiesMembersPointsExpirationListResponseBodyDataItem&gt;**](LoyaltiesMembersPointsExpirationListResponseBodyDataItem.md) | Contains array of loyalty points expiration buckets. | [optional] |
| **total** | **Integer** | Total number of point expiration buckets. | [optional] |

