# VoucherifySdk::LoyaltiesTiersGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Loyalty Tier name. |  |
| **earning_rules** | [**Hash&lt;String, MappingPoints&gt;**](MappingPoints.md) | Contains a list of earning rule IDs and their points mapping for the given earning rule. | [optional] |
| **rewards** | [**Hash&lt;String, MappingPoints&gt;**](MappingPoints.md) | Contains a list of reward IDs and their points mapping for the given reward. | [optional] |
| **points** | [**LoyaltyTierBasePoints**](LoyaltyTierBasePoints.md) |  |  |
| **id** | **String** | Unique loyalty tier ID. |  |
| **campaign_id** | **String** | Unique parent campaign ID. |  |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the loyalty tier. A set of key/value pairs that you can attach to a loyalty tier object. It can be useful for storing additional information about the loyalty tier in a structured format. |  |
| **created_at** | **Time** | Timestamp representing the date and time when the loyalty tier was created in ISO 8601 format. |  |
| **updated_at** | **Time** | Timestamp representing the date and time when the loyalty tier was updated in ISO 8601 format. | [optional] |
| **config** | [**LoyaltyTierAllOfConfig**](LoyaltyTierAllOfConfig.md) |  |  |
| **expiration** | [**LoyaltyTierExpiration**](LoyaltyTierExpiration.md) |  | [optional] |
| **object** | **String** | The type of object represented by JSON. This object stores information about the loyalty. | [default to &#39;loyalty_tier&#39;] |

