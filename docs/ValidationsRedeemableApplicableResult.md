# VoucherifySdk::ValidationsRedeemableApplicableResult

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsRedeemableApplicableResult.openapi_one_of
# =>
# [
#   :'RedeemableResultGiftCard',
#   :'RedeemableResultLoyaltyCard',
#   :'RedeemableResultPromotionStack',
#   :'RedeemableResultPromotionTier',
#   :'RedeemableResultVoucherCode'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsRedeemableApplicableResult.build(data)
# => #<RedeemableResultGiftCard:0x00007fdd4aab02a0>

VoucherifySdk::ValidationsRedeemableApplicableResult.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RedeemableResultGiftCard`
- `RedeemableResultLoyaltyCard`
- `RedeemableResultPromotionStack`
- `RedeemableResultPromotionTier`
- `RedeemableResultVoucherCode`
- `nil` (if no type matches)

