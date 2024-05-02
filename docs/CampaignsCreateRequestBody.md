# VoucherifySdk::CampaignsCreateRequestBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CampaignsCreateRequestBody.openapi_one_of
# =>
# [
#   :'CampaignsCreateDiscountCouponsCampaign',
#   :'CampaignsCreateGiftCampaign',
#   :'CampaignsCreateGiveawayCampaign',
#   :'CampaignsCreateLoyaltyCampaign',
#   :'CampaignsCreatePromotionCampaign',
#   :'CampaignsCreateReferralCampaign'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CampaignsCreateRequestBody.build(data)
# => #<CampaignsCreateDiscountCouponsCampaign:0x00007fdd4aab02a0>

VoucherifySdk::CampaignsCreateRequestBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignsCreateDiscountCouponsCampaign`
- `CampaignsCreateGiftCampaign`
- `CampaignsCreateGiveawayCampaign`
- `CampaignsCreateLoyaltyCampaign`
- `CampaignsCreatePromotionCampaign`
- `CampaignsCreateReferralCampaign`
- `nil` (if no type matches)

