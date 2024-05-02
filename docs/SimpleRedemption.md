# VoucherifySdk::SimpleRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **date** | **Time** | Timestamp representing the date and time when the redemption was created in ISO 8601 format. | [optional] |
| **amount** | **Integer** | A positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the total amount of the order. This is the sum of the order items&#39; amounts. | [optional] |
| **order** | [**SimpleOrder**](SimpleOrder.md) |  | [optional] |
| **reward** | [**SimpleRedemptionRewardResult**](SimpleRedemptionRewardResult.md) |  | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **voucher** | [**SimpleVoucher**](SimpleVoucher.md) |  | [optional] |
| **promotion_tier** | [**SimplePromotionTier**](SimplePromotionTier.md) |  | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **object** | **String** | The type of object represented by the JSON. This object stores information about the &#x60;redemption&#x60;. | [optional][default to &#39;redemption&#39;] |

