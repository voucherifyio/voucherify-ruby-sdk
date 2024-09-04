# VoucherifySdk::PublicationsCreateRequestBodyCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of an existing customer. | [optional] |
| **source_id** | **String** | A unique identifier of the customer who validates a voucher. It can be a customer ID or email from a CRM system, database, or a third-party service. If you also pass a customer ID (unique ID assigned by Voucherify), the source ID will be ignored. | [optional] |
| **name** | **String** | Customer&#39;s first and last name. | [optional] |
| **description** | **String** | An arbitrary string that you can attach to a customer object. | [optional] |
| **email** | **String** | Customer&#39;s email address. | [optional] |
| **phone** | **String** | Customer&#39;s phone number. This parameter is mandatory when you try to send out codes to customers via an SMS channel. | [optional] |
| **birthday** | **Date** | &#x60;Deprecated&#x60;. ~~Customer&#39;s birthdate; format YYYY-MM-DD~~. | [optional] |
| **birthdate** | **Date** | Customer&#39;s birthdate; format YYYY-MM-DD. | [optional] |
| **address** | [**PublicationsCreateRequestBodyCustomerAddress**](PublicationsCreateRequestBodyCustomerAddress.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |

