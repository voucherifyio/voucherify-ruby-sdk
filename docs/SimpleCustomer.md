# VoucherifySdk::SimpleCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of an existing customer that will be linked to redemption in this request. | [optional] |
| **source_id** | **String** | A unique identifier of the customer who validates a voucher. It can be a customer ID or email from a CRM system, database, or a third-party service. If you also pass a customer ID (unique ID assigned by Voucherify), the source ID will be ignored. | [optional] |
| **name** | **String** | Customer&#39;s first and last name. | [optional] |
| **email** | **String** | Customer&#39;s email address. | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a customer. The metadata object stores all custom attributes assigned to the customer. It can be useful for storing additional information about the customer in a structured format. This metadata can be used for validating whether the customer qualifies for a discount or it can be used in building customer segments. | [optional] |
| **object** | **String** | The type of object represented by JSON. | [optional][default to &#39;customer&#39;] |

