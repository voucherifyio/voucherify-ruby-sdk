# VoucherifySdk::CustomerActivityData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CustomerActivityData.openapi_one_of
# =>
# [
#   :'EventCustomerActiveCampaignFailed',
#   :'EventCustomerActiveCampaignRecovered',
#   :'EventCustomerActiveCampaignSent',
#   :'EventCustomerBatchFailed',
#   :'EventCustomerBatchRecovered',
#   :'EventCustomerBatchSent',
#   :'EventCustomerBrazeFailed',
#   :'EventCustomerBrazeRecovered',
#   :'EventCustomerBrazeSent',
#   :'EventCustomerConfirmed',
#   :'EventCustomerConsentsGiven',
#   :'EventCustomerConsentsRevoked',
#   :'EventCustomerCreated',
#   :'EventCustomerCustomEvent',
#   :'EventCustomerDeleted',
#   :'EventCustomerEmailFailed',
#   :'EventCustomerEmailRecovered',
#   :'EventCustomerEmailSent',
#   :'EventCustomerGiftVoucherBalanceAdded',
#   :'EventCustomerIntercomFailed',
#   :'EventCustomerIntercomRecovered',
#   :'EventCustomerIntercomSent',
#   :'EventCustomerKlaviyoFailed',
#   :'EventCustomerKlaviyoRecovered',
#   :'EventCustomerKlaviyoSent',
#   :'EventCustomerLoyaltyCardPointsAdded',
#   :'EventCustomerLoyaltyCardPointsTransferred',
#   :'EventCustomerLoyaltyTierDowngraded',
#   :'EventCustomerLoyaltyTierExpirationChanged',
#   :'EventCustomerLoyaltyTierJoined',
#   :'EventCustomerLoyaltyTierLeft',
#   :'EventCustomerLoyaltyTierProlonged',
#   :'EventCustomerLoyaltyTierUpgraded',
#   :'EventCustomerLoyaltyUpdated',
#   :'EventCustomerMailchimpFailed',
#   :'EventCustomerMailchimpRecovered',
#   :'EventCustomerMailchimpSent',
#   :'EventCustomerOrderCanceled',
#   :'EventCustomerOrderCreated',
#   :'EventCustomerOrderFulfilled',
#   :'EventCustomerOrderPaid',
#   :'EventCustomerOrderProcessing',
#   :'EventCustomerOrderUpdated',
#   :'EventCustomerPublicationFailed',
#   :'EventCustomerPublicationSucceeded',
#   :'EventCustomerRedemptionFailed',
#   :'EventCustomerRedemptionRollbackFailed',
#   :'EventCustomerRedemptionRollbackSucceeded',
#   :'EventCustomerRedemptionSucceeded',
#   :'EventCustomerReferred',
#   :'EventCustomerRewardRedemptionsCompleted',
#   :'EventCustomerRewardRedemptionsCreated',
#   :'EventCustomerRewardRedemptionsPending',
#   :'EventCustomerRewardRedemptionsRolledBack',
#   :'EventCustomerRewarded',
#   :'EventCustomerRewardedLoyaltyPoints',
#   :'EventCustomerSegmentEntered',
#   :'EventCustomerSegmentLeft',
#   :'EventCustomerShopifyFailed',
#   :'EventCustomerShopifyRecovered',
#   :'EventCustomerShopifySent',
#   :'EventCustomerSmsFailed',
#   :'EventCustomerSmsRecovered',
#   :'EventCustomerSmsSent',
#   :'EventCustomerUpdated',
#   :'EventCustomerValidationFailed',
#   :'EventCustomerValidationSucceeded',
#   :'EventCustomerVoucherDeleted',
#   :'EventCustomerVouchersLoyaltyPointsExpired'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'VoucherifySdk'

VoucherifySdk::CustomerActivityData.build(data)
# => #<EventCustomerActiveCampaignFailed:0x00007fdd4aab02a0>

VoucherifySdk::CustomerActivityData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EventCustomerActiveCampaignFailed`
- `EventCustomerActiveCampaignRecovered`
- `EventCustomerActiveCampaignSent`
- `EventCustomerBatchFailed`
- `EventCustomerBatchRecovered`
- `EventCustomerBatchSent`
- `EventCustomerBrazeFailed`
- `EventCustomerBrazeRecovered`
- `EventCustomerBrazeSent`
- `EventCustomerConfirmed`
- `EventCustomerConsentsGiven`
- `EventCustomerConsentsRevoked`
- `EventCustomerCreated`
- `EventCustomerCustomEvent`
- `EventCustomerDeleted`
- `EventCustomerEmailFailed`
- `EventCustomerEmailRecovered`
- `EventCustomerEmailSent`
- `EventCustomerGiftVoucherBalanceAdded`
- `EventCustomerIntercomFailed`
- `EventCustomerIntercomRecovered`
- `EventCustomerIntercomSent`
- `EventCustomerKlaviyoFailed`
- `EventCustomerKlaviyoRecovered`
- `EventCustomerKlaviyoSent`
- `EventCustomerLoyaltyCardPointsAdded`
- `EventCustomerLoyaltyCardPointsTransferred`
- `EventCustomerLoyaltyTierDowngraded`
- `EventCustomerLoyaltyTierExpirationChanged`
- `EventCustomerLoyaltyTierJoined`
- `EventCustomerLoyaltyTierLeft`
- `EventCustomerLoyaltyTierProlonged`
- `EventCustomerLoyaltyTierUpgraded`
- `EventCustomerLoyaltyUpdated`
- `EventCustomerMailchimpFailed`
- `EventCustomerMailchimpRecovered`
- `EventCustomerMailchimpSent`
- `EventCustomerOrderCanceled`
- `EventCustomerOrderCreated`
- `EventCustomerOrderFulfilled`
- `EventCustomerOrderPaid`
- `EventCustomerOrderProcessing`
- `EventCustomerOrderUpdated`
- `EventCustomerPublicationFailed`
- `EventCustomerPublicationSucceeded`
- `EventCustomerRedemptionFailed`
- `EventCustomerRedemptionRollbackFailed`
- `EventCustomerRedemptionRollbackSucceeded`
- `EventCustomerRedemptionSucceeded`
- `EventCustomerReferred`
- `EventCustomerRewardRedemptionsCompleted`
- `EventCustomerRewardRedemptionsCreated`
- `EventCustomerRewardRedemptionsPending`
- `EventCustomerRewardRedemptionsRolledBack`
- `EventCustomerRewarded`
- `EventCustomerRewardedLoyaltyPoints`
- `EventCustomerSegmentEntered`
- `EventCustomerSegmentLeft`
- `EventCustomerShopifyFailed`
- `EventCustomerShopifyRecovered`
- `EventCustomerShopifySent`
- `EventCustomerSmsFailed`
- `EventCustomerSmsRecovered`
- `EventCustomerSmsSent`
- `EventCustomerUpdated`
- `EventCustomerValidationFailed`
- `EventCustomerValidationSucceeded`
- `EventCustomerVoucherDeleted`
- `EventCustomerVouchersLoyaltyPointsExpired`
- `nil` (if no type matches)

