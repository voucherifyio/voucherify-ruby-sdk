# VoucherifySdk::TemplatesCampaignsListResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about campaign templates. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the JSON property that contains the array of campaign templates. | [optional][default to &#39;data&#39;] |
| **data** | [**Array&lt;CampaignTemplate&gt;**](CampaignTemplate.md) | Dictionary that contains an array of campaign templates. | [optional] |
| **total** | **Integer** | Total number of templates, regardless of the applied query parameters. Displayed only if the &#x60;include_total&#x60; query paremeter is set to &#x60;true&#x60;. | [optional] |
| **has_more** | **Boolean** | As query results are always limited (by the limit parameter), the &#x60;has_more&#x60; flag indicates if there are more records for given filter parameters. This lets you know if you can run another request to get more records returned in the results. | [optional] |
| **more_starting_after** | **String** | Returns an ID that can be used to return another page of results. Use the template ID in the &#x60;starting_after_id&#x60; query parameter to display another page of the results starting after the template with that ID. | [optional] |

