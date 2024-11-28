# VoucherifySdk::RedemptionEntryOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID assigned by Voucherify of an existing order that will be linked to the redemption of this request. | [optional] |
| **source_id** | **String** | Unique source ID of an existing order that will be linked to the redemption of this request. | [optional] |
| **status** | **String** | The order status. | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **initial_amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **discount_amount** | **Integer** | Sum of all order-level discounts applied to the order. | [optional] |
| **items_discount_amount** | **Integer** | Sum of all product-specific discounts applied to the order. | [optional] |
| **total_discount_amount** | **Integer** | Sum of all order-level AND all product-specific discounts applied to the order. | [optional] |
| **total_amount** | **Integer** | Order amount after undoing all the discounts through the rollback redemption. | [optional] |
| **applied_discount_amount** | **Integer** | This field shows the order-level discount applied. | [optional] |
| **items_applied_discount_amount** | **Integer** | Sum of all product-specific discounts applied in a particular request.   &#x60;sum(items, i &#x3D;&gt; i.applied_discount_amount)&#x60; | [optional] |
| **total_applied_discount_amount** | **Integer** | Sum of all order-level AND all product-specific discounts applied in a particular request.   &#x60;total_applied_discount_amount&#x60; &#x3D; &#x60;applied_discount_amount&#x60; + &#x60;items_applied_discount_amount&#x60; | [optional] |
| **items** | [**Array&lt;OrderCalculatedItem&gt;**](OrderCalculatedItem.md) | Array of items applied to the order. It can include up 500 items. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to an order. It can be useful for storing additional information about the order in a structured format. It can be used to define business validation rules or discount formulas. | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;order&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the order was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the order was last updated in ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the customer making the purchase. | [optional] |
| **referrer_id** | **String** | Unique referrer ID. | [optional] |
| **customer** | [**RedemptionEntryOrderCustomer**](RedemptionEntryOrderCustomer.md) |  | [optional] |
| **referrer** | [**RedemptionEntryOrderReferrer**](RedemptionEntryOrderReferrer.md) |  | [optional] |
| **redemptions** | [**Hash&lt;String, OrderRedemptionsEntry&gt;**](OrderRedemptionsEntry.md) |  | [optional] |

