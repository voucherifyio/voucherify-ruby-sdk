# VoucherifySdk::LoyaltiesMembersRedemptionRedeemResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. |  |
| **object** | **String** | The type of object represented by the JSON | [default to &#39;redemption&#39;] |
| **date** | **Time** | Timestamp representing the date and time when the object was created in ISO 8601 format. |  |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. |  |
| **tracking_id** | **String** | Hashed customer source ID. |  |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. |  |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. |  |
| **result** | **String** | Redemption result. |  |
| **status** | **String** | Redemption status. |  |
| **related_redemptions** | [**RedemptionRelatedRedemptions**](RedemptionRelatedRedemptions.md) |  | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**OrderCalculatedNoCustomerData**](OrderCalculatedNoCustomerData.md) |  |  |
| **channel** | [**RedemptionChannel**](RedemptionChannel.md) |  |  |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  |  |
| **related_object_type** | **String** | Defines the related object. |  |
| **related_object_id** | **String** | Unique related object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. |  |
| **voucher** | [**Voucher**](Voucher.md) |  | [optional] |
| **promotion_tier** | [**PromotionTier**](PromotionTier.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  |  |
| **gift** | [**RedemptionGift**](RedemptionGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionLoyaltyCard**](RedemptionLoyaltyCard.md) |  | [optional] |

