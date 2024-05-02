# VoucherifySdk::SimpleOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID assigned by Voucherify of an existing order that will be linked to the redemption of this request.   | [optional] |
| **source_id** | **String** | Unique source ID of an existing order that will be linked to the redemption of this request. | [optional] |
| **status** | **String** | The order status. | [optional] |
| **customer_id** | **String** | Unique customer ID of the customer making the purchase. | [optional] |
| **referrer_id** | **String** | Unique referrer ID. | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **discount_amount** | **Integer** | Sum of all order-level discounts applied to the order. | [optional] |
| **applied_discount_amount** | **Integer** | This field shows the order-level discount applied. | [optional] |
| **items_discount_amount** | **Integer** | Sum of all product-specific discounts applied to the order. | [optional] |
| **items_applied_discount_amount** | **Integer** | Sum of all product-specific discounts applied in a particular request.   &#x60;sum(items, i &#x3D;&gt; i.applied_discount_amount)&#x60; | [optional] |
| **total_discount_amount** | **Integer** | Sum of all order-level AND all product-specific discounts applied to the order. | [optional] |
| **total_applied_discount_amount** | **Integer** | Sum of all order-level AND all product-specific discounts applied in a particular request.   &#x60;total_applied_discount_amount&#x60; &#x3D; &#x60;applied_discount_amount&#x60; + &#x60;items_applied_discount_amount&#x60; | [optional] |
| **total_amount** | **Integer** | Order amount after undoing all the discounts through the rollback redemption. | [optional] |
| **items** | [**Array&lt;SimpleOrderItem&gt;**](SimpleOrderItem.md) | Array of items applied to the order. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to an order. It can be useful for storing additional information about the order in a structured format. | [optional] |
| **object** | **String** | The type of object represented by JSON. | [default to &#39;order&#39;] |

