# VoucherifySdk::VouchersUpdateResponseBodyRedemption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | How many times a voucher can be redeemed. A &#x60;null&#x60; value means unlimited. | [optional] |
| **redeemed_quantity** | **Integer** | How many times a voucher has already been redeemed. | [optional] |
| **redeemed_points** | **Integer** | Total loyalty points redeemed. | [optional] |
| **object** | **String** | The type of the object represented is by default &#x60;list&#x60;. To get this list, you need to make a call to the endpoint returned in the url attribute. | [optional][default to &#39;list&#39;] |
| **url** | **String** | The endpoint where this list of redemptions can be accessed using a **GET** method. &#x60;/v1/vouchers/{voucher_code}/redemptions&#x60; | [optional] |

