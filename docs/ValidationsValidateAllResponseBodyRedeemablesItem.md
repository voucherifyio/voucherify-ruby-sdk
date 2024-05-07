# VoucherifySdk::ValidationsValidateAllResponseBodyRedeemablesItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsValidateAllResponseBodyRedeemablesItem.openapi_one_of
# =>
# [
#   :'ValidationsRedeemableApplicable',
#   :'ValidationsRedeemableInapplicable',
#   :'ValidationsRedeemableSkipped'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsValidateAllResponseBodyRedeemablesItem.build(data)
# => #<ValidationsRedeemableApplicable:0x00007fdd4aab02a0>

VoucherifySdk::ValidationsValidateAllResponseBodyRedeemablesItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ValidationsRedeemableApplicable`
- `ValidationsRedeemableInapplicable`
- `ValidationsRedeemableSkipped`
- `nil` (if no type matches)

