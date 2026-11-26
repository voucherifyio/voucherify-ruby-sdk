# VoucherifySdk::ProductCollectionsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about product collections. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the JSON property that contains the array of product collections. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;ProductCollectionsItem&gt;**](ProductCollectionsItem.md) | A dictionary that contains an array of product collections and their details.  &lt;Note&gt;If the Areas and Stores enterprise feature is enabled for product collections, this list does not return &#x60;access_settings_assignments&#x60;. To get the areas and stores to which a product collection is assigned, use [GET Product Collection](/api-reference/product-collections/get-product-collection). Contact [Voucherify Sales](https://www.voucherify.io/contact-sales) to learn more.&lt;/Note&gt; | [optional] |
| **total** | **Integer** | Total number of product collections. | [optional] |

