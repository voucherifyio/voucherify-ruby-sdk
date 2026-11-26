# VoucherifySdk::LoyaltiesTiersListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about loyalty tiers in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of loyalty tier objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;LoyaltyTier&gt;**](LoyaltyTier.md) | This is an object representing a loyalty tier. Loyalty tiers are used in a **legacy loyalty** campaign with different levels of membership and varied earning rules and rewards based on the customer&#39;s tiers. | [optional] |
| **total** | **Integer** | Total number of loyalty tier objects. | [optional] |

