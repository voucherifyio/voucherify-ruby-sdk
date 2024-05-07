# VoucherifySdk::OrdersListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of object represented by JSON. This object stores information about orders in a dictionary. | [default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of order objects. | [default to &#39;orders&#39;] |
| **orders** | [**Array&lt;OrderCalculatedNoCustomerData&gt;**](OrderCalculatedNoCustomerData.md) | Contains array of order objects. |  |
| **total** | **Integer** | Total number of orders. |  |

