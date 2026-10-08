# VoucherifySdk::CardTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique card transaction ID assigned by Voucherify. | [optional] |
| **card_id** | **String** | ID of the card the transaction belongs to. Assigned by Voucherify. | [optional] |
| **program_id** | **String** | ID of the loyalty program. Assigned by Voucherify. | [optional] |
| **member_id** | **String** | ID of the member owning the card. Assigned by Voucherify. | [optional] |
| **card_definition_id** | **String** | ID of the card definition of the card. Assigned by Voucherify. | [optional] |
| **card_type** | **String** | Card type. | [optional][default to &#39;INDIVIDUAL&#39;] |
| **type** | **String** | Transaction type. Options depend on the endpoint and the transaction variant. | [optional] |
| **details** | **Object** |  |  |
| **status** | **String** | Transaction processing status. Transactions are created as &#x60;PENDING&#x60; and processed asynchronously. | [optional] |
| **created_at** | **Time** | Timestamp when the transaction was created (ISO 8601). | [optional] |
| **updated_at** | **Time** | Timestamp when the transaction was last updated (ISO 8601), or &#x60;null&#x60;. | [optional] |
| **object** | **String** | Object type marker, always &#x60;card_transaction&#x60;. | [optional][default to &#39;card_transaction&#39;] |

