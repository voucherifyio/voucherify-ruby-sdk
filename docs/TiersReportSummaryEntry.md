# VoucherifySdk::TiersReportSummaryEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the summary row (format: &#x60;lptrs_&#x60; followed by hexadecimal characters). | [optional] |
| **tier_structure_id** | **String** | Unique identifier of the tier structure (format &#x60;lts_...&#x60;). | [optional] |
| **tier_id** | **String** | Unique identifier of the tier (format &#x60;lt_...&#x60;). | [optional] |
| **joins** | **Float** | Total number of members who joined this tier. | [optional] |
| **upgrades** | **Float** | Total number of upgrades into this tier. | [optional] |
| **downgrades** | **Float** | Total number of downgrades into this tier. | [optional] |
| **lefts** | **Float** | Total number of members who left this tier. | [optional] |
| **prolongs** | **Float** | Counts expiration-date changes for members who stayed on this tier. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_tiers_summary_report&#x60;. | [optional][default to &#39;program_tiers_summary_report&#39;] |

