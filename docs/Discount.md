# VoucherifySdk::Discount

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Discount.openapi_one_of
# =>
# [
#   :'DiscountAmount',
#   :'DiscountFixed',
#   :'DiscountPercent',
#   :'DiscountUnit',
#   :'DiscountUnitMultiple'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Discount.build(data)
# => #<DiscountAmount:0x00007fdd4aab02a0>

VoucherifySdk::Discount.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DiscountAmount`
- `DiscountFixed`
- `DiscountPercent`
- `DiscountUnit`
- `DiscountUnitMultiple`
- `nil` (if no type matches)

