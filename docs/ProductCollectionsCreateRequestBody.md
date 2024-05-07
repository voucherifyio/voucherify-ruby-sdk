# VoucherifySdk::ProductCollectionsCreateRequestBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ProductCollectionsCreateRequestBody.openapi_one_of
# =>
# [
#   :'ProductCollectionsCreateDynamicRequestBody',
#   :'ProductCollectionsCreateStaticRequestBody'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ProductCollectionsCreateRequestBody.build(data)
# => #<ProductCollectionsCreateDynamicRequestBody:0x00007fdd4aab02a0>

VoucherifySdk::ProductCollectionsCreateRequestBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ProductCollectionsCreateDynamicRequestBody`
- `ProductCollectionsCreateStaticRequestBody`
- `nil` (if no type matches)

