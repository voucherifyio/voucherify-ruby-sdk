# VoucherifySdk::OrdersCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID assigned by Voucherify of an existing order that will be linked to the redemption of this request. | [optional] |
| **source_id** | **String** | Unique source ID of an existing order that will be linked to the redemption of this request. | [optional] |
| **status** | **String** | The order status. | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts.   | [optional] |
| **discount_amount** | **Integer** | Sum of all order-level discounts applied to the order. | [optional] |
| **initial_amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **items** | [**Array&lt;OrderItem&gt;**](OrderItem.md) | Array of items applied to the order. | [optional] |
| **customer** | [**Customer**](Customer.md) |  | [optional] |
| **customer_id** | **String** | Unique customer ID of the customer making the purchase. | [optional] |
| **referrer** | [**Referrer**](Referrer.md) |  | [optional] |
| **referrer_id** | **String** | Unique referrer ID. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to an order. It can be useful for storing additional information about the order in a structured format. | [optional] |

