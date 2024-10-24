# VoucherifySdk::Redemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. | [optional] |
| **object** | **String** | The type of the object represented by the JSON | [optional][default to &#39;redemption&#39;] |
| **date** | **Time** | Timestamp representing the date and time when the object was created. The value is shown in the ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. | [optional] |
| **amount** | **Integer** | For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **status** | **String** | Redemption status. | [optional] |
| **related_redemptions** | [**RedemptionRelatedRedemptions**](RedemptionRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **channel** | [**RedemptionChannel**](RedemptionChannel.md) |  | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** | Unique related object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. | [optional] |
| **promotion_tier** | [**PromotionTier**](PromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **gift** | [**RedemptionGift**](RedemptionGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionLoyaltyCard**](RedemptionLoyaltyCard.md) |  | [optional] |
| **voucher** | [**RedemptionVoucher**](RedemptionVoucher.md) |  | [optional] |

