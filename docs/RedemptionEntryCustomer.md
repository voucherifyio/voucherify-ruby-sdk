# VoucherifySdk::RedemptionEntryCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of an existing customer that will be linked to redemption in this request. | [optional] |
| **source_id** | **String** | A unique identifier of the customer who validates a voucher. It can be a customer ID or email from a CRM system, database, or a third-party service. If you also pass a customer ID (unique ID assigned by Voucherify), the source ID will be ignored. | [optional] |
| **name** | **String** | Customer&#39;s first and last name. | [optional] |
| **email** | **String** | Customer&#39;s email address. | [optional] |
| **metadata** | **Object** |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;customer&#39;] |

