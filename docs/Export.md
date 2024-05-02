# VoucherifySdk::Export

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Export.openapi_one_of
# =>
# [
#   :'ExportCustomer',
#   :'ExportOrder',
#   :'ExportPointsExpiration',
#   :'ExportPublication',
#   :'ExportRedemption',
#   :'ExportVoucher',
#   :'ExportVoucherTransactions'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::Export.build(data)
# => #<ExportCustomer:0x00007fdd4aab02a0>

VoucherifySdk::Export.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ExportCustomer`
- `ExportOrder`
- `ExportPointsExpiration`
- `ExportPublication`
- `ExportRedemption`
- `ExportVoucher`
- `ExportVoucherTransactions`
- `nil` (if no type matches)

