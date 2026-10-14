# VoucherifySdk::CardNextActivation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Float** | Number of pending points to be activated. | [optional][default to 0] |
| **type** | **String** | Pending points activation type from the card definition. | [optional] |
| **date** | **Date** | Activation date (&#x60;YYYY-MM-DD&#x60;). Present for all types except &#x60;EVENT_BASED&#x60;. | [optional] |
| **cancel_date** | **Date** | Date when the pending points are canceled if the activating event does not occur (&#x60;YYYY-MM-DD&#x60;). Present only for the &#x60;EVENT_BASED&#x60; type. | [optional] |

