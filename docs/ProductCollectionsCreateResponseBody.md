# VoucherifySdk::ProductCollectionsCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product collection ID. |  |
| **name** | **String** | Unique user-defined product collection name. |  |
| **type** | **String** | Describes whether the product collection is dynamic (products come in and leave based on set criteria) or static (manually selected products). |  |
| **filter** | [**ProductCollectionsCreateDynamicRequestBodyFilter**](ProductCollectionsCreateDynamicRequestBodyFilter.md) |  | [optional] |
| **products** | [**Array&lt;ProductCollectionsItemProductsItem&gt;**](ProductCollectionsItemProductsItem.md) | Defines a set of products for a &#x60;STATIC&#x60; product collection type. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the product collection was created in ISO 8601 format. |  |
| **object** | **String** | The type of object represented by JSON. This object stores information about the static product collection. | [default to &#39;products_collection&#39;] |

