# VoucherifySdk::PublicationsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about publications in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of publications. | [optional][default to &#39;publications&#39;] |
| **publications** | [**Array&lt;PublicationsListResponseBodyPublicationsItem&gt;**](PublicationsListResponseBodyPublicationsItem.md) | Response schema model for publishing vouchers to a specific customer. | [optional] |
| **total** | **Integer** | Total number of publications. | [optional] |

