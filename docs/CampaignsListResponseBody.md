# VoucherifySdk::CampaignsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about campaigns in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of campaign objects. | [optional][default to &#39;campaigns&#39;] |
| **campaigns** | [**Array&lt;CampaignBase&gt;**](CampaignBase.md) | Contains array of campaign objects. | [optional] |
| **total** | **Integer** | Total number of campaigns. | [optional] |

