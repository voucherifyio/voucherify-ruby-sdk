# VoucherifySdk::ProductCollectionsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product collection ID. | [optional] |
| **name** | **String** | Unique user-defined product collection name. | [optional] |
| **type** | **String** | Describes whether the product collection is dynamic (products come in and leave based on set criteria) or static (manually selected products). | [optional] |
| **filter** | **Object** | Defines a set of criteria and boundary conditions for an &#x60;AUTO_UPDATE&#x60; product collection type. | [optional] |
| **products** | [**Array&lt;ProductCollectionsItemProductsItem&gt;**](ProductCollectionsItemProductsItem.md) | Defines a set of products for a &#x60;STATIC&#x60; product collection type. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the product collection was created. The value is shown in the ISO 8601 format. | [optional] |
| **readonly** | **Boolean** | Indicates whether the product collection can only be read by the caller in the Areas and Stores enterprise feature. Returned only when area and store visibility rules apply to the caller. A read-only product collection can&#39;t be updated or deleted. | [optional] |
| **access_settings_assignments** | [**AccessSettingsProductCollectionAssignmentsList**](AccessSettingsProductCollectionAssignmentsList.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the static product collection. | [optional][default to &#39;products_collection&#39;] |

