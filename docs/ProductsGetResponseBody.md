# VoucherifySdk::ProductsGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique product ID assigned by Voucherify. |  |
| **source_id** | **String** | Unique product source ID. |  |
| **name** | **String** | Unique user-defined product name. |  |
| **price** | **Integer** | Unit price. It is represented by a value multiplied by 100 to accurately reflect 2 decimal places, such as &#x60;$100.00&#x60; being expressed as &#x60;10000&#x60;. |  |
| **attributes** | **Array&lt;String&gt;** | A list of product attributes whose values you can customize for given SKUs: &#x60;[\&quot;color\&quot;,\&quot;size\&quot;,\&quot;ranking\&quot;]&#x60;. Each child SKU can have a unique value for a given attribute. |  |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the product. A set of key/value pairs that you can attach to a product object. It can be useful for storing additional information about the product in a structured format. |  |
| **image_url** | **String** | The HTTPS URL pointing to the .png or .jpg file that will be used to render the product image. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the product was created in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the product was updated in ISO 8601 format. | [optional] |
| **object** | **String** | The type of object represented by JSON. This object stores information about the product. | [default to &#39;product&#39;] |
| **skus** | [**SkusListForProduct**](SkusListForProduct.md) |  | [optional] |

