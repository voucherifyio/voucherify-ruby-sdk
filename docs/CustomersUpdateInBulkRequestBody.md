# VoucherifySdk::CustomersUpdateInBulkRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_id** | **String** | Unique customer source ID. | [optional] |
| **name** | **String** | Customer&#39;s first and last name. | [optional] |
| **description** | **String** | An arbitrary string that you can attach to a customer object. | [optional] |
| **email** | **String** | Customer&#39;s email address. | [optional] |
| **phone** | **String** | Customer&#39;s phone number. This parameter is mandatory when you try to send out codes to customers via an SMS channel. | [optional] |
| **birthday** | **Date** | &#x60;Deprecated&#x60;. ~~Customer&#39;s birthdate; format YYYY-MM-DD~~. | [optional] |
| **birthdate** | **Date** | Customer&#39;s birthdate; format YYYY-MM-DD. | [optional] |
| **address** | [**CustomersUpdateInBulkRequestBodyAddress**](CustomersUpdateInBulkRequestBodyAddress.md) |  | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a customer. The metadata object stores all custom attributes assigned to the customer. It can be useful for storing additional information about the customer in a structured format. This metadata can be used for validating whether the customer qualifies for a discount or it can be used in building customer segments. | [optional] |

