# VoucherifySdk::RedemptionEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **date** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. | [optional] |
| **amount** | **Integer** | For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. and For gift cards, this represents the number of the credits restored to the card in the rolledback redemption. The number is a negative integer in the smallest currency unit, e.g. -100 cents for $1.00 added back to the card. For loyalty cards, this represents the number of loyalty points restored to the card in the rolledback redemption. The number is a negative integer. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **status** | **String** |  | [optional] |
| **related_redemptions** | [**RedemptionEntryRelatedRedemptions**](RedemptionEntryRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**RedemptionEntryOrder**](RedemptionEntryOrder.md) |  | [optional] |
| **channel** | [**RedemptionEntryChannel**](RedemptionEntryChannel.md) |  | [optional] |
| **customer** | [**RedemptionEntryCustomer**](RedemptionEntryCustomer.md) |  | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** |  | [optional] |
| **promotion_tier** | [**RedemptionEntryPromotionTier**](RedemptionEntryPromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **gift** | [**RedemptionEntryGift**](RedemptionEntryGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionEntryLoyaltyCard**](RedemptionEntryLoyaltyCard.md) |  | [optional] |
| **voucher** | [**RedemptionEntryVoucher**](RedemptionEntryVoucher.md) |  | [optional] |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |

