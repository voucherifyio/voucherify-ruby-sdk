# VoucherifySdk::PublicationsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of object represented by JSON. This object stores information about publications in a dictionary. | [default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of publications. | [default to &#39;publications&#39;] |
| **publications** | [**Array&lt;PublicationsListResponseBodyPublicationsItem&gt;**](PublicationsListResponseBodyPublicationsItem.md) | Contains array of publication objects, voucher object will be simplified. |  |
| **total** | **Integer** | Total number of publications. |  |

