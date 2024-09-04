# VoucherifySdk::ProductsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about products in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of product objects. | [optional][default to &#39;products&#39;] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | Contains array of product objects. | [optional] |
| **total** | **Integer** | Total number of product objects. | [optional] |

