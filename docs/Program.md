# VoucherifySdk::Program

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique program identifier. | [optional] |
| **name** | **String** | Program name. | [optional] |
| **status** | **String** | Program status. | [optional] |
| **start_date** | **Time** | Program validity start date (ISO 8601), or &#x60;null&#x60; when not set. | [optional] |
| **end_date** | **Time** | Program validity end date (ISO 8601), or &#x60;null&#x60; when not set. | [optional] |
| **validity_hours** | [**ProgramValidityHours**](ProgramValidityHours.md) |  | [optional] |
| **metadata** | **Object** | Arbitrary key-value metadata. Defaults to &#x60;{}&#x60;. | [optional] |
| **created_at** | **Time** | Creation timestamp (ISO 8601). | [optional] |
| **updated_at** | **Time** | Last update timestamp (ISO 8601), or &#x60;null&#x60; when never updated. | [optional] |
| **object** | **String** | Object type marker. | [optional][default to &#39;program&#39;] |

