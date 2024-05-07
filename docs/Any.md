# VoucherifySdk::Any

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Any.openapi_one_of
# =>
# [
#   :'Array<ArrayInner>',
#   :'Float',
#   :'Object',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Any.build(data)
# => #<Array<ArrayInner>:0x00007fdd4aab02a0>

VoucherifySdk::Any.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ArrayInner>`
- `Float`
- `Object`
- `String`
- `nil` (if no type matches)

