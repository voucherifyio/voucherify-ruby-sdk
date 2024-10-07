# VoucherifySdk::MetadataSchemasListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the metadata schemas in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of metadata schema objects. | [optional][default to &#39;schemas&#39;] |
| **schemas** | [**Array&lt;MetadataSchemaDeprecated&gt;**](MetadataSchemaDeprecated.md) | Array of metadata schema objects. The metadata schemas are listed by related object properties. | [optional] |
| **total** | **Integer** | The total number of metadata schema objects. | [optional] |

