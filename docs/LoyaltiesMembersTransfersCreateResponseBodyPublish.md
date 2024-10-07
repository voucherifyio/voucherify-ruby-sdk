# VoucherifySdk::LoyaltiesMembersTransfersCreateResponseBodyPublish

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented is by default list. To get this list, you need to make a call to the endpoint returned in the url attribute. | [optional][default to &#39;list&#39;] |
| **count** | **Integer** | Publication events counter. | [optional] |
| **entries** | **Array&lt;String&gt;** |  | [optional] |
| **url** | **String** | The endpoint where this list of publications can be accessed using a **GET** method. /v1/vouchers/{voucher_code}/publications | [optional] |

