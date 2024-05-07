# VoucherifySdk::StackableValidateRedeemBaseRedeemablesItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::StackableValidateRedeemBaseRedeemablesItem.openapi_one_of
# =>
# [
#   :'RedeemGiftCard',
#   :'RedeemLoyaltyCard',
#   :'RedeemPromotionStack',
#   :'RedeemPromotionTier',
#   :'RedeemVoucher'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::StackableValidateRedeemBaseRedeemablesItem.build(data)
# => #<RedeemGiftCard:0x00007fdd4aab02a0>

VoucherifySdk::StackableValidateRedeemBaseRedeemablesItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RedeemGiftCard`
- `RedeemLoyaltyCard`
- `RedeemPromotionStack`
- `RedeemPromotionTier`
- `RedeemVoucher`
- `nil` (if no type matches)

