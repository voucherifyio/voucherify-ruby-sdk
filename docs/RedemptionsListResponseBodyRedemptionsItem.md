# VoucherifySdk::RedemptionsListResponseBodyRedemptionsItem

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
| **related_redemptions** | [**RedemptionsListResponseBodyRedemptionsItemRelatedRedemptions**](RedemptionsListResponseBodyRedemptionsItemRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**RedemptionsListResponseBodyRedemptionsItemOrder**](RedemptionsListResponseBodyRedemptionsItemOrder.md) |  | [optional] |
| **channel** | [**RedemptionsListResponseBodyRedemptionsItemChannel**](RedemptionsListResponseBodyRedemptionsItemChannel.md) |  | [optional] |
| **customer** | [**RedemptionsListResponseBodyRedemptionsItemCustomer**](RedemptionsListResponseBodyRedemptionsItemCustomer.md) |  | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** |  | [optional] |
| **promotion_tier** | [**RedemptionsListResponseBodyRedemptionsItemPromotionTier**](RedemptionsListResponseBodyRedemptionsItemPromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **gift** | [**RedemptionsListResponseBodyRedemptionsItemGift**](RedemptionsListResponseBodyRedemptionsItemGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionsListResponseBodyRedemptionsItemLoyaltyCard**](RedemptionsListResponseBodyRedemptionsItemLoyaltyCard.md) |  | [optional] |
| **voucher** | [**RedemptionsListResponseBodyRedemptionsItemVoucher**](RedemptionsListResponseBodyRedemptionsItemVoucher.md) |  | [optional] |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |

