# VoucherifySdk::VouchersRedemptionGetResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | The maximum number of times a voucher can be redeemed. |  |
| **redeemed_quantity** | **Integer** | The number of times the voucher was redeemed successfully. |  |
| **object** | **String** | The type of object represented by JSON. This object stores information about redemptions in a dictionary. | [default to &#39;list&#39;] |
| **url** | **String** | URL |  |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of &#x60;redemption_entries&#x60;. | [default to &#39;redemption_entries&#39;] |
| **total** | **Integer** | Total number of redemption objects. |  |
| **redemption_entries** | [**Array&lt;VouchersRedemptionGetResponseBodyRedemptionEntriesItem&gt;**](VouchersRedemptionGetResponseBodyRedemptionEntriesItem.md) | Contains the array of successful and failed redemption objects. |  |

