# VoucherifySdk::LoyaltiesMembersTransfersCreateResponseBodyRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | How many times a voucher can be redeemed. A null value means unlimited. | [optional] |
| **redeemed_points** | **Integer** | Total loyalty points redeemed. | [optional] |
| **redeemed_quantity** | **Integer** | How many times a voucher has already been redeemed. | [optional] |
| **object** | **String** | The type of the object represented is by default list. To get this list, you need to make a call to the endpoint returned in the url attribute. | [optional][default to &#39;list&#39;] |
| **url** | **String** | The endpoint where this list of redemptions can be accessed using a **GET** method. /v1/vouchers/{voucher_code}/redemptions | [optional] |

