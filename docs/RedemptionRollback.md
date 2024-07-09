# VoucherifySdk::RedemptionRollback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the redemption rollback. |  |
| **object** | **String** | The type of the object represented by the JSON | [default to &#39;redemption_rollback&#39;] |
| **date** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. |  |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. |  |
| **tracking_id** | **String** | Hashed customer source ID. |  |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. |  |
| **amount** | **Integer** | For gift cards, this represents the number of the credits restored to the card in the rolledback redemption. The number is a negative integer in the smallest currency unit, e.g. -100 cents for $1.00 added back to the card. For loyalty cards, this represents the number of loyalty points restored to the card in the rolledback redemption. The number is a negative integer. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. |  |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |
| **result** | **String** | Redemption result. |  |
| **status** | **String** | Redemption status. |  |
| **related_redemptions** | [**RedemptionRollbackRelatedRedemptions**](RedemptionRollbackRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**OrderCalculatedNoCustomerData**](OrderCalculatedNoCustomerData.md) |  |  |
| **channel** | [**RedemptionRollbackChannel**](RedemptionRollbackChannel.md) |  |  |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  |  |
| **related_object_type** | **String** | Defines the related object. |  |
| **related_object_id** | **String** | Unique identifier of the related object. It is assigned by Voucherify, i.e. &#x60;v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno&#x60; for a voucher. |  |
| **voucher** | [**Voucher**](Voucher.md) |  | [optional] |
| **promotion_tier** | [**PromotionTier**](PromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **gift** | [**RedemptionRollbackGift**](RedemptionRollbackGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionRollbackLoyaltyCard**](RedemptionRollbackLoyaltyCard.md) |  | [optional] |

