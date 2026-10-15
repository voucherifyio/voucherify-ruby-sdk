# VoucherifySdk::MembersReportSummaryEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies the summary row (format: &#x60;lpmrs_&#x60; followed by hexadecimal characters). | [optional] |
| **members_joined** | **Float** | Counts members who joined the program. | [optional] |
| **members_deactivated** | **Float** | Counts members deactivated. Decreases by 1 when a member is activated again. | [optional] |
| **members_deleted** | **Float** | Counts members deleted. | [optional] |
| **cards** | **Float** | Counts cards created. Decreases by 1 when a card is unassigned (e.g. when a member is deleted). | [optional] |
| **object** | **String** | Object type marker. Always &#x60;program_members_summary_report&#x60;. | [optional][default to &#39;program_members_summary_report&#39;] |

