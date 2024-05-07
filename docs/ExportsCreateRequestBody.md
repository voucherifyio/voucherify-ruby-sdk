# VoucherifySdk::ExportsCreateRequestBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ExportsCreateRequestBody.openapi_one_of
# =>
# [
#   :'ExportCustomerBase',
#   :'ExportOrderBase',
#   :'ExportPointsExpirationBase',
#   :'ExportPublicationBase',
#   :'ExportRedemptionBase',
#   :'ExportVoucherBase',
#   :'ExportVoucherTransactionsBase'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ExportsCreateRequestBody.build(data)
# => #<ExportCustomerBase:0x00007fdd4aab02a0>

VoucherifySdk::ExportsCreateRequestBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ExportCustomerBase`
- `ExportOrderBase`
- `ExportPointsExpirationBase`
- `ExportPublicationBase`
- `ExportRedemptionBase`
- `ExportVoucherBase`
- `ExportVoucherTransactionsBase`
- `nil` (if no type matches)

