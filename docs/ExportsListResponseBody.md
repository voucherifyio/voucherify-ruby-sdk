# VoucherifySdk::ExportsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about exports. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of exports. | [optional][default to &#39;exports&#39;] |
| **exports** | [**Array&lt;Export&gt;**](Export.md) | An array of export objects. | [optional] |
| **total** | **Integer** | Total number of exports. | [optional] |

