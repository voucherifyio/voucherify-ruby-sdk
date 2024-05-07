# VoucherifySdk::RedemptionInternal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. | [optional] |
| **object** | **String** | The type of object represented by the JSON. This object stores information about the &#x60;redemption&#x60;. | [optional][default to &#39;redemption&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the redemption was created in ISO 8601 format. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the redemption. | [optional] |
| **channel_type** | **String** | The source of the channel for the redemption rollback. A &#x60;USER&#x60; corresponds to the Voucherify Dashboard and an &#x60;API&#x60; corresponds to the API. | [optional] |
| **channel_id** | **String** | Unique channel ID of the user performing the redemption. This is either a user ID from a user using the Voucherify Dashboard or an X-APP-Id of a user using the API. | [optional] |
| **failure_code** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a generic reason as to why the redemption failed. | [optional] |
| **failure_message** | **String** | If the result is &#x60;FAILURE&#x60;, this parameter will provide a more expanded reason as to why the redemption failed. | [optional] |
| **order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **previous_order** | [**OrderCalculated**](OrderCalculated.md) |  | [optional] |
| **reward** | [**RedemptionRewardResult**](RedemptionRewardResult.md) |  | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **reason** | **String** | System generated cause for the redemption being invalid in the context of the provided parameters. | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **status** | **String** | Redemption status. | [optional] |
| **related_redemptions** | [**RedemptionInternalRelatedRedemptions**](RedemptionInternalRelatedRedemptions.md) |  | [optional] |
| **parent_redemption_id** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **related_object_type** | **String** | Defines the related object. | [optional] |
| **related_object_id** | **String** | Unique related object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. | [optional] |
| **related_object_parent_id** | **String** | Unique related parent object ID assigned by Voucherify, i.e. v_lfZi4rcEGe0sN9gmnj40bzwK2FH6QUno for a voucher. | [optional] |
| **campaign_name** | **String** | Campaign name | [optional] |
| **voucher** | [**Voucher**](Voucher.md) |  | [optional] |
| **promotion_tier** | [**PromotionTier**](PromotionTier.md) |  | [optional] |

