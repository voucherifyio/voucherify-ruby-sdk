# VoucherifySdk::AreaStoreProductCollectionAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the product collection assignment. | [optional] |
| **area_id** | **String** | Unique identifier of the area to which the product collection is assigned. | [optional] |
| **all_stores** | **Boolean** | Determines if the product collection is assigned to all of the stores in the area, i.e. if an area ID is passed in the &#x60;access_settings.assign.area_all_stores_ids&#x60; in the request. | [optional] |
| **area_store_id** | **String** | Unique identifier of the store to which the product collection is assigned. Not returned when the product collection is assigned to the whole area or to all stores in the area. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the assignment was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the assignment was last updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;area_store_product_collection_assignment&#39;] |

