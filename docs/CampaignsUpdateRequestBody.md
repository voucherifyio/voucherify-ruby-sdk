# VoucherifySdk::CampaignsUpdateRequestBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CampaignsUpdateRequestBody.openapi_one_of
# =>
# [
#   :'CampaignsUpdateDiscountCouponsCampaign',
#   :'CampaignsUpdateGiftCampaign',
#   :'CampaignsUpdateGiveawayCampaign',
#   :'CampaignsUpdateLoyaltyCampaign',
#   :'CampaignsUpdatePromotionCampaign',
#   :'CampaignsUpdateReferralCampaign'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CampaignsUpdateRequestBody.build(data)
# => #<CampaignsUpdateDiscountCouponsCampaign:0x00007fdd4aab02a0>

VoucherifySdk::CampaignsUpdateRequestBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CampaignsUpdateDiscountCouponsCampaign`
- `CampaignsUpdateGiftCampaign`
- `CampaignsUpdateGiveawayCampaign`
- `CampaignsUpdateLoyaltyCampaign`
- `CampaignsUpdatePromotionCampaign`
- `CampaignsUpdateReferralCampaign`
- `nil` (if no type matches)

