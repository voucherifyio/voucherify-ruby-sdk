# VoucherifySdk::VouchersListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of voucher objects. | [optional][default to &#39;vouchers&#39;] |
| **vouchers** | [**Array&lt;VoucherWithCategories&gt;**](VoucherWithCategories.md) | A dictionary that contains an array of  vouchers. Each entry in the array is a separate voucher object. | [optional] |
| **total** | **Integer** | Returns how many vouchers in the project meet the limits defined by the query parameter definitions. | [optional] |

