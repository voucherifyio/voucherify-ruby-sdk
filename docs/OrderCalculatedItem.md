# VoucherifySdk::OrderCalculatedItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the order line item. | [optional] |
| **sku_id** | **String** | Unique identifier of the SKU. It is assigned by Voucherify. | [optional] |
| **product_id** | **String** | Unique identifier of the product. It is assigned by Voucherify. | [optional] |
| **related_object** | **String** | Used along with the source_id property, can be set to either sku or product. | [optional] |
| **source_id** | **String** | The merchant&#39;s product/SKU ID (if it is different from the Voucherify product/SKU ID). It is useful in the integration between multiple systems. It can be an ID from an eCommerce site, a database, or a third-party service. | [optional] |
| **quantity** | **Integer** | The quantity of the particular item in the cart. | [optional] |
| **discount_quantity** | **Integer** | Number of dicounted items. | [optional] |
| **initial_quantity** | **Integer** | A positive integer in the smallest unit quantity representing the total amount of the order; this is the sum of the order items&#39; quantity. | [optional] |
| **amount** | **Integer** | The total amount of the order item (price * quantity). | [optional] |
| **discount_amount** | **Integer** | Sum of all order-item-level discounts applied to the order. | [optional] |
| **applied_discount_amount** | **Integer** | This field shows the order-level discount applied. | [optional] |
| **applied_discount_quantity** | **Integer** | Number of the discounted items applied in the transaction. | [optional] |
| **applied_quantity** | **Integer** | Quantity of items changed by the application of a new quantity items. It can be positive when an item is added or negative if an item is replaced. | [optional] |
| **applied_quantity_amount** | **Integer** | Amount for the items changed by the application of a new quantity items. It can be positive when an item is added or negative if an item is replaced. | [optional] |
| **initial_amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **price** | **Integer** | Unit price of an item. Value is multiplied by 100 to precisely represent 2 decimal places. For example &#x60;10000 cents&#x60; for &#x60;$100.00&#x60;. | [optional] |
| **subtotal_amount** | **Integer** | Final order item amount after the applied item-level discount.  If there are no item-level discounts applied, this item is equal to the &#x60;amount&#x60;.    &#x60;subtotal_amount&#x60;&#x3D;&#x60;amount&#x60;-&#x60;applied_discount_amount&#x60; | [optional] |
| **product** | [**OrderCalculatedItemProduct**](OrderCalculatedItemProduct.md) |  | [optional] |
| **sku** | [**OrderCalculatedItemSku**](OrderCalculatedItemSku.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;order_item&#39;] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to an item object. It can be useful for storing additional information about the item in a structured format. It can be used to define business validation rules or discount formulas. | [optional] |
| **application_details** | [**Array&lt;ApplicationDetailsItem&gt;**](ApplicationDetailsItem.md) | Array containing details about the items that are replaced and the items that are replacements for discounts with the &#x60;REPLACE_ITEMS&#x60; effect. | [optional] |

