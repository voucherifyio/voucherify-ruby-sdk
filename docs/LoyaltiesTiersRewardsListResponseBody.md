# VoucherifySdk::LoyaltiesTiersRewardsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about loyalty tier rewards in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of loyalty tier reward objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;LoyaltiesLoyaltyTierReward&gt;**](LoyaltiesLoyaltyTierReward.md) | Contains array of loyalty tier reward objects. | [optional] |
| **total** | **Integer** | Total number of loyalty tier reward objects. | [optional] |

