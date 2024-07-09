# VoucherifySdk::CustomerActivityDataRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the &#x60;redemption&#x60;. | [optional][default to &#39;redemption&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **metadata** | **Object** |  | [optional] |
| **channel_type** | **String** | The source of the channel for the redemption rollback. A &#x60;USER&#x60; corresponds to the Voucherify Dashboard and an &#x60;API&#x60; corresponds to the API. | [optional] |
| **channel_id** | **String** | Unique channel ID of the user performing the redemption. This is either a user ID from a user using the Voucherify Dashboard or an X-APP-Id of a user using the API. | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**CustomerActivityDataRedemptionOrder**](CustomerActivityDataRedemptionOrder.md) |  | [optional] |
| **previous_order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **reward** | [**CustomerActivityDataRedemptionReward**](CustomerActivityDataRedemptionReward.md) |  | [optional] |
| **amount** | **Integer** | For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. and For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. In the case of redemption rollback, the numbers are expressed as negative integers. | [optional] |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **status** | **String** | Redemption status. | [optional] |
| **related_redemptions** | [**CustomerActivityDataRedemptionRelatedRedemptions**](CustomerActivityDataRedemptionRelatedRedemptions.md) |  | [optional] |
| **parent_redemption_id** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** | Unique related object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. | [optional] |
| **related_object_parent_id** | **String** | Unique related parent object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. | [optional] |
| **campaign_name** | **String** | Campaign name | [optional] |
| **voucher** | [**CustomerActivityDataRedemptionVoucher**](CustomerActivityDataRedemptionVoucher.md) |  | [optional] |
| **promotion_tier** | [**CustomerActivityDataRedemptionPromotionTier**](CustomerActivityDataRedemptionPromotionTier.md) |  | [optional] |
| **date** | **Time** | Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format. | [optional] |

