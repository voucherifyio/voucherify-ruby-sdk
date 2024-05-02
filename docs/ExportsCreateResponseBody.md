# VoucherifySdk::ExportsCreateResponseBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ExportsCreateResponseBody.openapi_one_of
# =>
# [
#   :'ExportCustomerScheduled',
#   :'ExportOrderScheduled',
#   :'ExportPointsExpirationScheduled',
#   :'ExportPublicationScheduled',
#   :'ExportRedemptionScheduled',
#   :'ExportVoucherScheduled',
#   :'ExportVoucherTransactionsScheduled'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ExportsCreateResponseBody.build(data)
# => #<ExportCustomerScheduled:0x00007fdd4aab02a0>

VoucherifySdk::ExportsCreateResponseBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ExportCustomerScheduled`
- `ExportOrderScheduled`
- `ExportPointsExpirationScheduled`
- `ExportPublicationScheduled`
- `ExportRedemptionScheduled`
- `ExportVoucherScheduled`
- `ExportVoucherTransactionsScheduled`
- `nil` (if no type matches)

