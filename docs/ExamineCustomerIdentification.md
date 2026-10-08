# VoucherifySdk::ExamineCustomerIdentification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Identification method. | [optional] |
| **customer_id** | **String** | Unique customer ID (&#x60;cust_...&#x60;). Required when &#x60;type&#x60; is &#x60;customer_id&#x60;. | [optional] |
| **customer_source_id** | **String** | Customer source ID, e.g. from an external system. May be provided as a string or a number. Required when &#x60;type&#x60; is &#x60;customer_source_id&#x60;. | [optional] |
| **member_id** | **String** | Loyalty member ID (&#x60;lmbr_...&#x60;). Required when &#x60;type&#x60; is &#x60;member_id&#x60;. | [optional] |

