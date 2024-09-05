# VoucherifySdk::LoyaltiesListCampaignsResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about loyalty campaigns in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of loyalty campaign objects. | [optional][default to &#39;campaigns&#39;] |
| **campaigns** | [**Array&lt;LoyaltyCampaign&gt;**](LoyaltyCampaign.md) | Contains an array of loyalty campaign objects. | [optional] |
| **total** | **Integer** | Total number of loyalty campaign objects. | [optional] |

