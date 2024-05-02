# VoucherifySdk::RewardType

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::RewardType.openapi_one_of
# =>
# [
#   :'RewardTypeCampaign',
#   :'RewardTypeCoin',
#   :'RewardTypeMaterial'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::RewardType.build(data)
# => #<RewardTypeCampaign:0x00007fdd4aab02a0>

VoucherifySdk::RewardType.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RewardTypeCampaign`
- `RewardTypeCoin`
- `RewardTypeMaterial`
- `nil` (if no type matches)

