# VoucherifySdk::PromotionTiersList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of object represented by JSON. This object stores information about promotion tiers in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of promotion tier objects. | [optional][default to &#39;tiers&#39;] |
| **tiers** | [**Array&lt;PromotionTier&gt;**](PromotionTier.md) | Contains array of promotion tier objects. | [optional] |
| **total** | **Integer** | Total number of promotion tiers. | [optional] |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the &#x60;has_more&#x60; flag indicates whether there are more records for given filter parameters. This let&#39;s you know if you are able to run another request (with a different page or a different start date filter) to get more records returned in the results. | [optional] |

