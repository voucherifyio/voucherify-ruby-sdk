# VoucherifySdk::AreaStoreCampaignAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the campaign assignment. | [optional] |
| **area_id** | **String** | Unique identifier of the area to which the campaign is assigned. | [optional] |
| **all_stores** | **Boolean** | Determines if the campaign is assigned to all of the stores in the area, i.e. if an area ID is passed in the &#x60;access_settings.assign.area_all_stores_ids&#x60; in the request. | [optional] |
| **area_store_id** | **String** | Unique identifier of the store to which the campaign is assigned. | [optional] |
| **created_at** | **Time** | Date and time when the assignment was made. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the campaign assignment to areas or stores. | [optional][default to &#39;area_store_campaign_assignment&#39;] |

