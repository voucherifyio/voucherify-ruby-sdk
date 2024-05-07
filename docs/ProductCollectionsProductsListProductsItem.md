# VoucherifySdk::ProductCollectionsProductsListProductsItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ProductCollectionsProductsListProductsItem.openapi_one_of
# =>
# [
#   :'ProductWithoutSkus',
#   :'SkuWithProduct'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ProductCollectionsProductsListProductsItem.build(data)
# => #<ProductWithoutSkus:0x00007fdd4aab02a0>

VoucherifySdk::ProductCollectionsProductsListProductsItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ProductWithoutSkus`
- `SkuWithProduct`
- `nil` (if no type matches)

