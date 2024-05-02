# VoucherifySdk::PublicationsCreateRequestBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::PublicationsCreateRequestBody.openapi_one_of
# =>
# [
#   :'CreatePublicationWithCampaign',
#   :'CreatePublicationWithSpecificVoucher'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::PublicationsCreateRequestBody.build(data)
# => #<CreatePublicationWithCampaign:0x00007fdd4aab02a0>

VoucherifySdk::PublicationsCreateRequestBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreatePublicationWithCampaign`
- `CreatePublicationWithSpecificVoucher`
- `nil` (if no type matches)

