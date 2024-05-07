# VoucherifySdk::EarningRuleBaseLoyalty

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::EarningRuleBaseLoyalty.openapi_one_of
# =>
# [
#   :'EarningRuleFixed',
#   :'EarningRuleProportional'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::EarningRuleBaseLoyalty.build(data)
# => #<EarningRuleFixed:0x00007fdd4aab02a0>

VoucherifySdk::EarningRuleBaseLoyalty.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EarningRuleFixed`
- `EarningRuleProportional`
- `nil` (if no type matches)

