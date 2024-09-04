# VoucherifySdk::RedemptionsRollbackCreateResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the redemption rollback. | [optional] |
| **object** | **String** | The type of the object represented by the JSON | [optional][default to &#39;redemption_rollback&#39;] |
| **date** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. | [optional] |
| **amount** | **Integer** | For gift cards, this represents the number of the credits restored to the card in the rolledback redemption. The number is a negative integer in the smallest currency unit, e.g. -100 cents for $1.00 added back to the card. For loyalty cards, this represents the number of loyalty points restored to the card in the rolledback redemption. The number is a negative integer. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **status** | **String** | Redemption status. | [optional] |
| **related_redemptions** | [**RedemptionsRollbackCreateResponseBodyRelatedRedemptions**](RedemptionsRollbackCreateResponseBodyRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **channel** | [**RedemptionsRollbackCreateResponseBodyChannel**](RedemptionsRollbackCreateResponseBodyChannel.md) |  | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** | Unique identifier of the related object. It is assigned by Voucherify, i.e. &#x60;v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno&#x60; for a voucher. | [optional] |
| **voucher** | [**Voucher**](Voucher.md) |  | [optional] |
| **promotion_tier** | [**PromotionTier**](PromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **gift** | [**RedemptionsRollbackCreateResponseBodyGift**](RedemptionsRollbackCreateResponseBodyGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionsRollbackCreateResponseBodyLoyaltyCard**](RedemptionsRollbackCreateResponseBodyLoyaltyCard.md) |  | [optional] |

