# VoucherifySdk::OrderCalculatedReferrer

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::OrderCalculatedReferrer.openapi_one_of
# =>
# [
#   :'ReferrerId',
#   :'ReferrerWithSummaryLoyaltyReferrals'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::OrderCalculatedReferrer.build(data)
# => #<ReferrerId:0x00007fdd4aab02a0>

VoucherifySdk::OrderCalculatedReferrer.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ReferrerId`
- `ReferrerWithSummaryLoyaltyReferrals`
- `nil` (if no type matches)

