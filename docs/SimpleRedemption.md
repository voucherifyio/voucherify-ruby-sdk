# VoucherifySdk::SimpleRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique redemption ID. | [optional] |
| **customer_id** | **String** | Unique customer ID of the redeeming customer. | [optional] |
| **tracking_id** | **String** | Hashed customer source ID. | [optional] |
| **date** | **Time** | Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format. | [optional] |
| **amount** | **Integer** | For gift cards, this is a positive integer in the smallest currency unit (e.g. 100 cents for $1.00) representing the number of redeemed credits. For loyalty cards, this is the number of loyalty points used in the transaction. In the case of redemption rollback, the numbers are expressed as negative integers. | [optional] |
| **order** | [**SimpleOrder**](SimpleOrder.md) |  | [optional] |
| **reward** | [**SimpleRedemptionRewardResult**](SimpleRedemptionRewardResult.md) |  | [optional] |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **result** | **String** | Redemption result. | [optional] |
| **voucher** | [**SimpleVoucher**](SimpleVoucher.md) |  | [optional] |
| **promotion_tier** | [**SimplePromotionTier**](SimplePromotionTier.md) |  | [optional] |
| **redemption** | **String** | Unique redemption ID of the parent redemption. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the &#x60;redemption&#x60;. | [optional][default to &#39;redemption&#39;] |

