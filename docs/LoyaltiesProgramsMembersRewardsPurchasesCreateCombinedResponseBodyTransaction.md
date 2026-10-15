# VoucherifySdk::LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBodyTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** |  | [optional] |
| **card_definition_id** | **String** | Unique identifier of the card definition for that card (format &#x60;lcdef_...&#x60;). | [optional] |
| **card_transaction_id** | **Object** | &#x60;null&#x60; for &#x60;DRY_RUN&#x60; (SIMULATED) transactions. | [optional] |
| **program_id** | **String** | Unique identifier of the loyalty program (format &#x60;lprg_...&#x60;). | [optional] |
| **member_id** | **String** | Unique identifier of the program member (format &#x60;lmbr_...&#x60;). | [optional] |
| **reward_id** | **String** | Unique identifier of the purchased reward (format &#x60;lrew_...&#x60;). | [optional] |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional][default to &#39;PURCHASE&#39;] |
| **details** | [**LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBodyTransactionDetails**](LoyaltiesProgramsMembersRewardsPurchasesCreateCombinedResponseBodyTransactionDetails.md) |  | [optional] |
| **updated_at** | **Object** | For &#x60;DRY_RUN&#x60; transactions, this is always &#x60;null&#x60;. | [optional] |
| **object** | **String** | Object type marker. Always &#x60;reward_transaction&#x60;. | [optional][default to &#39;reward_transaction&#39;] |
| **id** | **String** | Unique reward transaction identifier (format &#x60;lrtx_...&#x60;). | [optional] |
| **created_at** | **Time** | Timestamp when the transaction was created (ISO 8601). | [optional] |

