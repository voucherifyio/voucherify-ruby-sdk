# VoucherifySdk::CategoriesGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique category ID assigned by Voucherify. | [optional] |
| **name** | **String** | Category name. | [optional] |
| **hierarchy** | **Integer** | Category hierarchy. Categories with lower hierarchy are processed before categories with higher hierarchy value. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the category. | [optional][default to &#39;category&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the category was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the category was updated. The value is shown in the ISO 8601 format. | [optional] |

