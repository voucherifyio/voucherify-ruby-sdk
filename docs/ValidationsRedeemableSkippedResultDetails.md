# VoucherifySdk::ValidationsRedeemableSkippedResultDetails

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsRedeemableSkippedResultDetails.openapi_one_of
# =>
# [
#   :'ValidationsRedeemableSkippedResultCategoryLimitExceeded',
#   :'ValidationsRedeemableSkippedResultExclusionRulesNotMet',
#   :'ValidationsRedeemableSkippedResultLimitExceeded',
#   :'ValidationsRedeemableSkippedResultPrecedingValidationFailed',
#   :'ValidationsRedeemableSkippedResultRedeemablesCategoryLimitExceeded',
#   :'ValidationsRedeemableSkippedResultRedeemablesLimitExceeded'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::ValidationsRedeemableSkippedResultDetails.build(data)
# => #<ValidationsRedeemableSkippedResultCategoryLimitExceeded:0x00007fdd4aab02a0>

VoucherifySdk::ValidationsRedeemableSkippedResultDetails.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ValidationsRedeemableSkippedResultCategoryLimitExceeded`
- `ValidationsRedeemableSkippedResultExclusionRulesNotMet`
- `ValidationsRedeemableSkippedResultLimitExceeded`
- `ValidationsRedeemableSkippedResultPrecedingValidationFailed`
- `ValidationsRedeemableSkippedResultRedeemablesCategoryLimitExceeded`
- `ValidationsRedeemableSkippedResultRedeemablesLimitExceeded`
- `nil` (if no type matches)

