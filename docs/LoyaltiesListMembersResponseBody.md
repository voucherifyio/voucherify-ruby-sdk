# VoucherifySdk::LoyaltiesListMembersResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the object represented by JSON. This object stores information about members in a dictionary. | [optional][default to &#39;list&#39;] |
| **data_ref** | **String** | Identifies the name of the attribute that contains the array of voucher objects. | [optional][default to &#39;vouchers&#39;] |
| **vouchers** | [**Array&lt;LoyaltyMember&gt;**](LoyaltyMember.md) | Contains array of voucher objects representing loyalty cards, in other words, loyalty program members. | [optional] |
| **total** | **Integer** | Total number of voucher objects. | [optional] |

