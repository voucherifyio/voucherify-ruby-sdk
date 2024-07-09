# VoucherifySdk::RedemptionsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about redemptions in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of redemption objects. | [optional][default to &#39;redemptions&#39;] |
| **redemptions** | [**Array&lt;RedemptionsListResponseBodyRedemptionsItem&gt;**](RedemptionsListResponseBodyRedemptionsItem.md) |  | [optional] |
| **total** | **Integer** | Total number of redemptions. | [optional] |

