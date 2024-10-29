# VoucherifySdk::ManagementProjectsBrandingListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about the brand in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of brand objects. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;ManagementProjectsBranding&gt;**](ManagementProjectsBranding.md) | Array of brand objects. It contains only one object. | [optional] |
| **total** | **Integer** | The total number of brand objects. It is always &#x60;1&#x60;. | [optional] |
