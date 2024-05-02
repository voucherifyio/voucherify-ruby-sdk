# VoucherifySdk::PublicationsListResponseBodyPublicationsItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::PublicationsListResponseBodyPublicationsItem.openapi_one_of
# =>
# [
#   :'ListPublicationsItemInvalid',
#   :'ListPublicationsItemValidMultipleVouchers',
#   :'ListPublicationsItemValidSingleVoucher'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::PublicationsListResponseBodyPublicationsItem.build(data)
# => #<ListPublicationsItemInvalid:0x00007fdd4aab02a0>

VoucherifySdk::PublicationsListResponseBodyPublicationsItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListPublicationsItemInvalid`
- `ListPublicationsItemValidMultipleVouchers`
- `ListPublicationsItemValidSingleVoucher`
- `nil` (if no type matches)

