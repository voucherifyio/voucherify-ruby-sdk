# VoucherifySdk::CustomerActivityDataRedemptionRewardSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **source_id** | **String** |  | [optional] |
| **product_id** | **String** | The parent product&#39;s unique ID. | [optional] |
| **sku** | **String** |  | [optional] |
| **price** | **Integer** | Unit price. It is represented by a value multiplied by 100 to accurately reflect 2 decimal places, such as &#x60;$100.00&#x60; being expressed as &#x60;10000&#x60;. | [optional] |
| **currency** | **String** | SKU price currency. | [optional] |
| **attributes** | **Object** |  | [optional] |
| **image_url** | **String** | The HTTPS URL pointing to the .png or .jpg file that will be used to render the SKU image. | [optional] |
| **metadata** | **Object** |  | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the SKU was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the SKU was updated. The value is shown in the ISO 8601 format. | [optional] |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the &#x60;SKU&#x60;. | [optional][default to &#39;sku&#39;] |

