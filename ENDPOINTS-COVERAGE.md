# Endpoints Coverage
# Table of Contents

- [Publications](#publications)
  - [/v1/publications/create](#v1publicationscreate)
  - [/v1/publications](#v1publications)
- [Qualifications](#qualifications)
  - [/v1/qualifications](#v1qualifications)
- [Validations](#validations)
  - [/v1/validations](#v1validations)
  - [/v1/vouchers/{code}/validate](#v1voucherscodevalidate-deprecated)
  - [/v1/promotions/validation](#v1promotionsvalidation-deprecated)
  - [/v1/promotions/tiers/{tierId}/validation](#v1promotionstierstieridvalidation-deprecated)
- [Redemptions](#redemptions)
  - [/v1/redemptions](#v1redemptions)
  - [/v1/redemptions/{redemptionId}](#v1redemptionsredemptionid)
  - [/v1/vouchers/{code}/redemption](#v1voucherscoderedemption)
  - [/v1/redemptions/{redemptionId}/rollback](#v1redemptionsredemptionidrollback)
  - [/v1/promotions/tiers/{promotionTierId}/redemption](#v1promotionstierspromotiontieridredemption-deprecated)
  - [/v1/redemptions/{parentRedemptionId}/rollbacks](#v1redemptionsparentredemptionidrollbacks)
- [Vouchers](#vouchers)
  - [/v1/vouchers](#v1vouchers)
  - [/v1/vouchers/{code}](#v1voucherscode)
  - [/v1/vouchers/{code}/enable](#v1voucherscodeenable)
  - [/v1/vouchers/{code}/disable](#v1voucherscodedisable)
  - [/v1/vouchers/{code}/balance](#v1voucherscodebalance)
  - [/v1/vouchers/{code}/transactions](#v1voucherscodetransactions)
  - [/v1/vouchers/{code}/transactions/export](#v1voucherscodetransactionsexport)
  - [/v1/vouchers/import](#v1vouchersimport)
  - [/v1/vouchers/importCSV](#v1vouchersimportcsv)
  - [/v1/vouchers/bulk/async](#v1vouchersbulkasync)
  - [/v1/vouchers/metadata/async](#v1vouchersmetadataasync)
  - [/v1/vouchers/{code}/sessions/{sessionKey}](#v1voucherscodesessionssessionkey)
  - [/v1/vouchers/qualification](#v1vouchersqualification-deprecated)
- [Campaigns](#campaigns)
  - [/v1/campaigns](#v1campaigns)
  - [/v1/campaigns/{campaignId}](#v1campaignscampaignid)
  - [/v1/campaigns/{campaignId}/vouchers](#v1campaignscampaignidvouchers)
  - [/v1/campaigns/{campaignId}/vouchers/{code}](#v1campaignscampaignidvoucherscode)
  - [/v1/campaigns/{campaignId}/import](#v1campaignscampaignidimport)
  - [/v1/campaigns/{campaignId}/importCSV](#v1campaignscampaignidimportcsv)
  - [/v1/campaigns/qualification](#v1campaignsqualification-deprecated)
  - [/v1/campaigns/{campaignId}/enable](#v1campaignscampaignidenable)
  - [/v1/campaigns/{campaignId}/disable](#v1campaignscampaigniddisable)
- [Promotions](#promotions)
  - [/v1/promotions/tiers](#v1promotionstiers)
  - [/v1/promotions/{campaignId}/tiers](#v1promotionscampaignidtiers)
  - [/v1/promotions/tiers/{promotionTierId}](#v1promotionstierspromotiontierid)
  - [/v1/promotions/tiers/{promotionTierId}/enable](#v1promotionstierspromotiontieridenable)
  - [/v1/promotions/tiers/{promotionTierId}/disable](#v1promotionstierspromotiontieriddisable)
  - [/v1/promotions/stacks](#v1promotionsstacks)
  - [/v1/promotions/{campaignId}/stacks](#v1promotionscampaignidstacks)
  - [/v1/promotions/{campaignId}/stacks/{stackId}](#v1promotionscampaignidstacksstackid)
- [Rewards](#rewards)
  - [/v1/rewards](#v1rewards)
  - [/v1/rewards/{rewardId}](#v1rewardsrewardid)
  - [/v1/rewards/{rewardId}/assignments](#v1rewardsrewardidassignments)
  - [/v1/rewards/{rewardId}/assignments/{assignmentId}](#v1rewardsrewardidassignmentsassignmentid)
- [Loyalties](#loyalties)
  - [/v1/loyalties](#v1loyalties)
  - [/v1/loyalties/{campaignId}](#v1loyaltiescampaignid)
  - [/v1/loyalties/{campaignId}/members](#v1loyaltiescampaignidmembers)
  - [/v1/loyalties/{campaignId}/members/{memberId}](#v1loyaltiescampaignidmembersmemberid)
  - [/v1/loyalties/members/{memberId}](#v1loyaltiesmembersmemberid)
  - [/v1/loyalties/{campaignId}/members/{memberId}/activity](#v1loyaltiescampaignidmembersmemberidactivity)
  - [/v1/loyalties/members/{memberId}/activity](#v1loyaltiesmembersmemberidactivity)
  - [/v1/loyalties/{campaignId}/members/{memberId}/balance](#v1loyaltiescampaignidmembersmemberidbalance)
  - [/v1/loyalties/members/{memberId}/balance](#v1loyaltiesmembersmemberidbalance)
  - [/v1/loyalties/{campaignId}/members/{memberId}/transfers](#v1loyaltiescampaignidmembersmemberidtransfers)
  - [/v1/loyalties/{campaignId}/members/{memberId}/transactions](#v1loyaltiescampaignidmembersmemberidtransactions)
  - [/v1/loyalties/members/{memberId}/transactions](#v1loyaltiesmembersmemberidtransactions)
  - [/v1/loyalties/members/{memberId}/transactions/export](#v1loyaltiesmembersmemberidtransactionsexport)
  - [/v1/loyalties/{campaignId}/members/{memberId}/transactions/export](#v1loyaltiescampaignidmembersmemberidtransactionsexport)
  - [/v1/loyalties/{campaignId}/members/{memberId}/points-expiration](#v1loyaltiescampaignidmembersmemberidpoints-expiration)
  - [/v1/loyalties/{campaignId}/points-expiration/export](#v1loyaltiescampaignidpoints-expirationexport)
  - [/v1/loyalties/{campaignId}/earning-rules](#v1loyaltiescampaignidearning-rules)
  - [/v1/loyalties/{campaignId}/earning-rules/{earningRuleId}](#v1loyaltiescampaignidearning-rulesearningruleid)
  - [/v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/enable](#v1loyaltiescampaignidearning-rulesearningruleidenable)
  - [/v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/disable](#v1loyaltiescampaignidearning-rulesearningruleiddisable)
  - [/v1/loyalties/members/{memberId}/rewards](#v1loyaltiesmembersmemberidrewards)
  - [/v1/loyalties/{campaignId}/reward-assignments/{assignmentId}/reward](#v1loyaltiescampaignidreward-assignmentsassignmentidreward)
  - [/v1/loyalties/{campaignId}/reward-assignments](#v1loyaltiescampaignidreward-assignments)
  - [/v1/loyalties/{campaignId}/rewards](#v1loyaltiescampaignidrewards)
  - [/v1/loyalties/{campaignId}/reward-assignments/{assignmentId}](#v1loyaltiescampaignidreward-assignmentsassignmentid)
  - [/v1/loyalties/{campaignId}/rewards/{assignmentId}](#v1loyaltiescampaignidrewardsassignmentid)
  - [/v1/loyalties/{campaignId}/members/{memberId}/redemption](#v1loyaltiescampaignidmembersmemberidredemption)
  - [/v1/loyalties/members/{memberId}/redemption](#v1loyaltiesmembersmemberidredemption)
  - [/v1/loyalties/{campaignId}/tiers](#v1loyaltiescampaignidtiers)
  - [/v1/loyalties/{campaignId}/tiers/{loyaltyTierId}](#v1loyaltiescampaignidtiersloyaltytierid)
  - [/v1/loyalties/members/{memberId}/tiers](#v1loyaltiesmembersmemberidtiers)
  - [/v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/earning-rules](#v1loyaltiescampaignidtiersloyaltytieridearning-rules)
  - [/v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/rewards](#v1loyaltiescampaignidtiersloyaltytieridrewards)
- [Customers](#customers)
  - [/v1/customers](#v1customers)
  - [/v1/customers/{customerId}](#v1customerscustomerid)
  - [/v1/customers/{customerId}/permanent-deletion](#v1customerscustomeridpermanent-deletion)
  - [/v1/customers/importCSV](#v1customersimportcsv)
  - [/v1/customers/bulk/async](#v1customersbulkasync)
  - [/v1/customers/metadata/async](#v1customersmetadataasync)
  - [/v1/customers/{customerId}/consents](#v1customerscustomeridconsents)
  - [/v1/customers/{customerId}/activity](#v1customerscustomeridactivity)
  - [/v1/customers/{customerId}/activities](#v1customerscustomeridactivities)
  - [/v1/customers/{customerId}/segments](#v1customerscustomeridsegments)
  - [/v1/customers/{customerId}/redeemables](#v1customerscustomeridredeemables)
- [Orders](#orders)
  - [/v1/orders](#v1orders)
  - [/v1/orders/{orderId}](#v1ordersorderid)
  - [/v1/orders/import](#v1ordersimport)
  - [/v1/orders/export](#v1ordersexport)
- [Products](#products)
  - [/v1/products](#v1products)
  - [/v1/products/{productId}](#v1productsproductid)
  - [/v1/products/bulk/async](#v1productsbulkasync)
  - [/v1/products/metadata/async](#v1productsmetadataasync)
  - [/v1/skus/{skuId}](#v1skusskuid)
  - [/v1/products/{productId}/skus](#v1productsproductidskus)
  - [/v1/products/{productId}/skus/{skuId}](#v1productsproductidskusskuid)
  - [/v1/products/importCSV](#v1productsimportcsv)
  - [/v1/skus/importCSV](#v1skusimportcsv)
- [Product Collections](#product collections)
  - [/v1/product-collections](#v1product-collections)
  - [/v1/product-collections/{productCollectionId}](#v1product-collectionsproductcollectionid)
  - [/v1/product-collections/{productCollectionId}/products](#v1product-collectionsproductcollectionidproducts)
- [Validation Rules](#validation rules)
  - [/v1/validation-rules](#v1validation-rules)
  - [/v1/validation-rules/{validationRuleId}](#v1validation-rulesvalidationruleid)
  - [/v1/validation-rules-assignments](#v1validation-rules-assignments)
  - [/v1/validation-rules/{validationRuleId}/assignments](#v1validation-rulesvalidationruleidassignments)
  - [/v1/validation-rules/{validationRuleId}/assignments/{assignmentId}](#v1validation-rulesvalidationruleidassignmentsassignmentid)
- [Segments](#segments)
  - [/v1/segments/{segmentId}](#v1segmentssegmentid)
  - [/v1/segments](#v1segments)
- [Events](#events)
  - [/v1/events](#v1events)
- [Consents](#consents)
  - [/v1/consents](#v1consents)
- [Async Actions](#async actions)
  - [/v1/async-actions](#v1async-actions)
  - [/v1/async-actions/{asyncActionId}](#v1async-actionsasyncactionid)
- [Exports](#exports)
  - [/v1/exports](#v1exports)
  - [/v1/exports/{exportId}](#v1exportsexportid)
  - [/v1/exports/{export_Id}](#v1exportsexport_id)
- [Categories](#categories)
  - [/v1/categories](#v1categories)
  - [/v1/categories/{categoryId}](#v1categoriescategoryid)
- [Metadata Schemas](#metadata schemas)
  - [/v1/metadata-schemas](#v1metadata-schemas)
  - [/v1/metadata-schemas/{resource}](#v1metadata-schemasresource)
- [Locations](#locations)
  - [/v1/locations](#v1locations)
  - [/v1/locations/{locationId}](#v1locationslocationid)
- [Referrals](#referrals)
  - [/v1/referrals/{campaignId}/members/{memberId}/holders](#v1referralscampaignidmembersmemberidholders)
  - [/v1/referrals/members/{memberId}/holders](#v1referralsmembersmemberidholders)
- [Bin](#bin)
  - [/v1/trash-bin](#v1trash-bin)
  - [/v1/trash-bin/{binEntryId}](#v1trash-binbinentryid)
- [Management](#management)
  - [/management/v1/projects](#managementv1projects)
  - [/management/v1/projects/{projectId}](#managementv1projectsprojectid)
  - [/management/v1/projects/{projectId}/users](#managementv1projectsprojectidusers)
  - [/management/v1/projects/{projectId}/users/{userId}](#managementv1projectsprojectidusersuserid)
  - [/management/v1/projects/{projectId}/stacking-rules](#managementv1projectsprojectidstacking-rules)
  - [/management/v1/projects/{projectId}/stacking-rules/{stackingRulesId}](#managementv1projectsprojectidstacking-rulesstackingrulesid)
  - [/management/v1/projects/{projectId}/metadata-schemas](#managementv1projectsprojectidmetadata-schemas)
  - [/management/v1/projects/{projectId}/metadata-schemas/{metadataSchemaId}](#managementv1projectsprojectidmetadata-schemasmetadataschemaid)
  - [/management/v1/projects/{projectId}/custom-event-schemas](#managementv1projectsprojectidcustom-event-schemas)
  - [/management/v1/projects/{projectId}/custom-event-schemas/{customEventSchemaId}](#managementv1projectsprojectidcustom-event-schemascustomeventschemaid)
  - [/management/v1/projects/{projectId}/webhooks](#managementv1projectsprojectidwebhooks)
  - [/management/v1/projects/{projectId}/webhooks/{webhookId}](#managementv1projectsprojectidwebhookswebhookid)
  - [/management/v1/projects/{projectId}/branding](#managementv1projectsprojectidbranding)
  - [/management/v1/projects/{projectId}/branding/{brandingId}](#managementv1projectsprojectidbrandingbrandingid)
- [Client-side](#client-side)
  - [/client/v1/qualifications](#clientv1qualifications)
  - [/client/v1/promotions/tiers](#clientv1promotionstiers)
  - [/client/v1/redemptions](#clientv1redemptions)
  - [/client/v1/validations](#clientv1validations)
  - [/client/v1/customers/{customerId}/consents](#clientv1customerscustomeridconsents)
  - [/client/v1/events](#clientv1events)
  - [/client/v1/consents](#clientv1consents)
  - [/client/v1/validate](#clientv1validate-deprecated)
  - [/client/v1/redeem](#clientv1redeem-deprecated)
  - [/client/v1/publish](#clientv1publish)
# Endpoints

## Publications
### /v1/publications/create
#### Create Publication (get)
 **Supported ✅** 
### /v1/publications
#### List Publications (get)
 **Supported ✅** 
#### Create Publication (post)
 **Supported ✅** 
## Qualifications
### /v1/qualifications
#### Check Eligibility (post)
 **Supported ✅** 
## Validations
### /v1/validations
#### Validate Stackable Discounts (post)
 **Supported ✅** 
### ~~❗/v1/vouchers/{code}/validate [Deprecated]❗~~
#### ~~❗Validate Voucher [Deprecated] (post)❗~~
### ~~❗/v1/promotions/validation [Deprecated]❗~~
#### ~~❗Validate Promotions [Deprecated] (post)❗~~
### ~~❗/v1/promotions/tiers/{tierId}/validation [Deprecated]❗~~
#### ~~❗Validate Promotion Tier [Deprecated] (post)❗~~
## Redemptions
### /v1/redemptions
#### List Redemptions (get)
 **Supported ✅** 
#### Redeem Stackable Discounts (post)
 **Supported ✅** 
### /v1/redemptions/{redemptionId}
#### Get Redemption (get)
 **Supported ✅** 
### /v1/vouchers/{code}/redemption
#### Get Voucher's Redemptions (get)
 **Supported ✅** 
#### ~~❗Redeem Voucher [Deprecated] (post)❗~~
### /v1/redemptions/{redemptionId}/rollback
#### Rollback Redemption (post)
 **Supported ✅** 
### ~~❗/v1/promotions/tiers/{promotionTierId}/redemption [Deprecated]❗~~
#### ~~❗Redeem Promotion [Deprecated] (post)❗~~
### /v1/redemptions/{parentRedemptionId}/rollbacks
#### Rollback Stackable Redemptions (post)
 **Supported ✅** 
## Vouchers
### /v1/vouchers
#### List Vouchers (get)
 **Not supported ❌** 
#### Generate Random Code (post)
 **Not supported ❌** 
### /v1/vouchers/{code}
#### Get Voucher (get)
 **Supported ✅** 
#### Update Voucher (put)
 **Not supported ❌** 
#### Delete Voucher (delete)
 **Supported ✅** 
#### Create Voucher (post)
 **Not supported ❌** 
### /v1/vouchers/{code}/enable
#### Enable Voucher (post)
 **Supported ✅** 
### /v1/vouchers/{code}/disable
#### Disable Voucher (post)
 **Supported ✅** 
### /v1/vouchers/{code}/balance
#### Add or Remove Voucher Balance (post)
 **Supported ✅** 
### /v1/vouchers/{code}/transactions
#### List Voucher Transactions (get)
 **Supported ✅** 
### /v1/vouchers/{code}/transactions/export
#### Export Voucher Transactions (post)
 **Supported ✅** 
### /v1/vouchers/import
#### Import Vouchers (post)
 **Not supported ❌** 
### /v1/vouchers/importCSV
#### Import Vouchers using CSV (post)
 **Supported ✅** 
### /v1/vouchers/bulk/async
#### Update Vouchers in bulk (post)
 **Not supported ❌** 
### /v1/vouchers/metadata/async
#### Update Vouchers' metadata in bulk (post)
 **Not supported ❌** 
### /v1/vouchers/{code}/sessions/{sessionKey}
#### Release Validation Session (delete)
 **Supported ✅** 
### ~~❗/v1/vouchers/qualification [Deprecated]❗~~
#### ~~❗Examine Qualification [Deprecated] (post)❗~~
## Campaigns
### /v1/campaigns
#### Create Campaign (post)
 **Supported ✅** 
#### List Campaigns (get)
 **Supported ✅** 
### /v1/campaigns/{campaignId}
#### Get Campaign (get)
 **Supported ✅** 
#### Update Campaign (put)
 **Supported ✅** 
#### Delete Campaign (delete)
 **Supported ✅** 
### /v1/campaigns/{campaignId}/vouchers
#### Add Vouchers to Campaign (post)
 **Supported ✅** 
### /v1/campaigns/{campaignId}/vouchers/{code}
#### Add Voucher with Specific Code to Campaign (post)
 **Supported ✅** 
### /v1/campaigns/{campaignId}/import
#### Import Vouchers to Campaign (post)
 **Supported ✅** 
### /v1/campaigns/{campaignId}/importCSV
#### Import Vouchers to Campaign by CSV (post)
 **Supported ✅** 
### ~~❗/v1/campaigns/qualification [Deprecated]❗~~
#### ~~❗Examine Qualification [Deprecated] (post)❗~~
### /v1/campaigns/{campaignId}/enable
#### Enable Campaign (post)
 **Supported ✅** 
### /v1/campaigns/{campaignId}/disable
#### Disable Campaign (post)
 **Supported ✅** 
## Promotions
### /v1/promotions/tiers
#### List Promotion Tiers (get)
 **Not supported ❌** 
### /v1/promotions/{campaignId}/tiers
#### List Promotion Tiers from Campaign (get)
 **Supported ✅** 
#### Add Promotion Tier to Campaign (post)
 **Not supported ❌** 
### /v1/promotions/tiers/{promotionTierId}
#### Get Promotion Tier (get)
 **Supported ✅** 
#### Update Promotion Tier (put)
 **Not supported ❌** 
#### Delete Promotion Tier (delete)
 **Supported ✅** 
### /v1/promotions/tiers/{promotionTierId}/enable
#### Enable Promotion Tier (post)
 **Supported ✅** 
### /v1/promotions/tiers/{promotionTierId}/disable
#### Disable Promotion Tier (post)
 **Supported ✅** 
### /v1/promotions/stacks
#### List Promotion Stacks (get)
 **Supported ✅** 
### /v1/promotions/{campaignId}/stacks
#### List Promotion Stacks in Campaign (get)
 **Supported ✅** 
#### Create Promotion Stack (post)
 **Supported ✅** 
### /v1/promotions/{campaignId}/stacks/{stackId}
#### Get Promotion Stack (get)
 **Supported ✅** 
#### Update Promotion Stack (put)
 **Supported ✅** 
#### Delete Promotion Stack (delete)
 **Supported ✅** 
## Rewards
### /v1/rewards
#### List Rewards (get)
 **Not supported ❌** 
#### Create Reward (post)
 **Not supported ❌** 
### /v1/rewards/{rewardId}
#### Get Reward (get)
 **Not supported ❌** 
#### Update Reward (put)
 **Not supported ❌** 
#### Delete Reward (delete)
 **Supported ✅** 
### /v1/rewards/{rewardId}/assignments
#### List Reward Assignments (get)
 **Supported ✅** 
#### Create Reward Assignment (post)
 **Supported ✅** 
### /v1/rewards/{rewardId}/assignments/{assignmentId}
#### Update Reward Assignment (put)
 **Supported ✅** 
#### Delete Reward Assignment (delete)
 **Supported ✅** 
#### Get Reward Assignment (get)
 **Supported ✅** 
## Loyalties
### /v1/loyalties
#### List Loyalty Campaigns (get)
 **Not supported ❌** 
#### Create Loyalty Campaign (post)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}
#### Get Loyalty Campaign (get)
 **Not supported ❌** 
#### Update Loyalty Campaign (put)
 **Not supported ❌** 
#### Delete Loyalty Campaign (delete)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members
#### List Members (get)
 **Not supported ❌** 
#### Add Member (post)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/members/{memberId}
#### Get Member (get)
 **Not supported ❌** 
### /v1/loyalties/members/{memberId}
#### Get Member (get)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/members/{memberId}/activity
#### List Member Activity (get)
 **Not supported ❌** 
### /v1/loyalties/members/{memberId}/activity
#### List Member Activity (get)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/members/{memberId}/balance
#### Add or Remove Loyalty Card Balance (post)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/balance
#### Add or Remove Loyalty Card Balance (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members/{memberId}/transfers
#### Transfer Loyalty Points (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members/{memberId}/transactions
#### List Loyalty Card Transactions (get)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/transactions
#### List Loyalty Card Transactions (get)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/transactions/export
#### Export Loyalty Card Transactions (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members/{memberId}/transactions/export
#### Export Loyalty Card Transactions (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members/{memberId}/points-expiration
#### Get Points Expiration (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/points-expiration/export
#### Create Points Expiration Export (post)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/earning-rules
#### List Earning Rules (get)
 **Not supported ❌** 
#### Create Earning Rule (post)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}
#### Get Earning Rule (get)
 **Supported ✅** 
#### Update Earning Rule (put)
 **Not supported ❌** 
#### Delete Earning Rule (delete)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/enable
#### Enable Earning Rule (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/earning-rules/{earningRuleId}/disable
#### Disable Earning Rule (post)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/rewards
#### List Member Rewards (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/reward-assignments/{assignmentId}/reward
#### Get Reward Details (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/reward-assignments
#### List Reward Assignments (get)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/rewards
#### List Reward Assignments (get)
 **Not supported ❌** 
#### Create Reward Assignment (post)
 **Not supported ❌** 
### /v1/loyalties/{campaignId}/reward-assignments/{assignmentId}
#### Get Reward Assignment (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/rewards/{assignmentId}
#### Get Reward Assignment (get)
 **Supported ✅** 
#### Update Reward Assignment (put)
 **Not supported ❌** 
#### Delete Reward Assignment (delete)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/members/{memberId}/redemption
#### Redeem Reward (post)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/redemption
#### Redeem Reward (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/tiers
#### List Loyalty Tiers (get)
 **Supported ✅** 
#### Create loyalty tiers (post)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}
#### Get Loyalty Tier (get)
 **Supported ✅** 
### /v1/loyalties/members/{memberId}/tiers
#### List Member's Loyalty Tiers (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/earning-rules
#### List Loyalty Tier Earning Rules (get)
 **Supported ✅** 
### /v1/loyalties/{campaignId}/tiers/{loyaltyTierId}/rewards
#### List Loyalty Tier Rewards (get)
 **Supported ✅** 
## Customers
### /v1/customers
#### List Customers (get)
 **Supported ✅** 
#### Create Customer (post)
 **Supported ✅** 
### /v1/customers/{customerId}
#### Get Customer (get)
 **Supported ✅** 
#### Delete Customer (delete)
 **Supported ✅** 
#### Update Customer (put)
 **Supported ✅** 
### /v1/customers/{customerId}/permanent-deletion
#### Delete Customer Permanently (post)
 **Supported ✅** 
### /v1/customers/importCSV
#### Import and Update Customers using CSV (post)
 **Supported ✅** 
### /v1/customers/bulk/async
#### Update Customers in bulk (post)
 **Supported ✅** 
### /v1/customers/metadata/async
#### Update Customers' Metadata in bulk (post)
 **Supported ✅** 
### /v1/customers/{customerId}/consents
#### Update Customer's consents (put)
 **Supported ✅** 
### /v1/customers/{customerId}/activity
#### List Customer Activity (get)
 **Not supported ❌** 
### /v1/customers/{customerId}/activities
#### List Customer Activities (get)
 **Supported ✅** 
### /v1/customers/{customerId}/segments
#### List Customer's Segments (get)
 **Supported ✅** 
### /v1/customers/{customerId}/redeemables
#### List Customer's Redeemables [Beta] (get)
 **Not supported ❌** 
## Orders
### /v1/orders
#### List Orders (get)
 **Supported ✅** 
#### Create Order (post)
 **Supported ✅** 
### /v1/orders/{orderId}
#### Get Order (get)
 **Supported ✅** 
#### Update Order (put)
 **Supported ✅** 
### /v1/orders/import
#### Import Orders (post)
 **Supported ✅** 
### /v1/orders/export
#### Create Orders Export (post)
 **Supported ✅** 
## Products
### /v1/products
#### List Products (get)
 **Supported ✅** 
#### Create Product (post)
 **Supported ✅** 
### /v1/products/{productId}
#### Get Product (get)
 **Supported ✅** 
#### Update Product (put)
 **Supported ✅** 
#### Delete Product (delete)
 **Supported ✅** 
### /v1/products/bulk/async
#### Update Products in bulk (post)
 **Supported ✅** 
### /v1/products/metadata/async
#### Update Products' Metadata in bulk (post)
 **Supported ✅** 
### /v1/skus/{skuId}
#### Get SKU (get)
 **Supported ✅** 
### /v1/products/{productId}/skus
#### List SKUs in Product (get)
 **Supported ✅** 
#### Create SKU (post)
 **Supported ✅** 
### /v1/products/{productId}/skus/{skuId}
#### Update SKU (put)
 **Supported ✅** 
#### Delete SKU (delete)
 **Supported ✅** 
### /v1/products/importCSV
#### Import Products using CSV (post)
 **Supported ✅** 
### /v1/skus/importCSV
#### Import SKUs using CSV (post)
 **Supported ✅** 
## Product Collections
### /v1/product-collections
#### List Product Collections (get)
 **Supported ✅** 
#### Create Product Collection (post)
 **Supported ✅** 
### /v1/product-collections/{productCollectionId}
#### Get Product Collection (get)
 **Supported ✅** 
#### Delete Product Collection (delete)
 **Supported ✅** 
### /v1/product-collections/{productCollectionId}/products
#### List Products in Collection (get)
 **Supported ✅** 
## Validation Rules
### /v1/validation-rules
#### List Validation Rules (get)
 **Supported ✅** 
#### Create Validation Rules (post)
 **Supported ✅** 
### /v1/validation-rules/{validationRuleId}
#### Get Validation Rule (get)
 **Supported ✅** 
#### Update Validation Rule (put)
 **Supported ✅** 
#### Delete Validation Rule (delete)
 **Supported ✅** 
### /v1/validation-rules-assignments
#### List Validation Rules' Assignment(s) (get)
 **Supported ✅** 
### /v1/validation-rules/{validationRuleId}/assignments
#### List Validation Rule Assignments (get)
 **Supported ✅** 
#### Create Validation Rules Assignments (post)
 **Supported ✅** 
### /v1/validation-rules/{validationRuleId}/assignments/{assignmentId}
#### Delete Validation Rule Assignment (delete)
 **Supported ✅** 
## Segments
### /v1/segments/{segmentId}
#### Get Segment (get)
 **Not supported ❌** 
#### Delete Segment (delete)
 **Supported ✅** 
### /v1/segments
#### Create Segment (post)
 **Not supported ❌** 
## Events
### /v1/events
#### Track Custom Event (post)
 **Supported ✅** 
## Consents
### /v1/consents
#### List Consents (get)
 **Not supported ❌** 
## Async Actions
### /v1/async-actions
#### List Async Actions (get)
 **Not supported ❌** 
### /v1/async-actions/{asyncActionId}
#### Get Async Action (get)
 **Not supported ❌** 
## Exports
### /v1/exports
#### Create Export (post)
 **Supported ✅** 
#### List Exports (get)
 **Supported ✅** 
### /v1/exports/{exportId}
#### Get Export (get)
 **Supported ✅** 
#### Delete Export (delete)
 **Supported ✅** 
### /v1/exports/{export_Id}
#### Download Export (get)
 **Supported ✅** 
## Categories
### /v1/categories
#### List Categories (get)
 **Supported ✅** 
#### Create Category (post)
 **Supported ✅** 
### /v1/categories/{categoryId}
#### Get Category (get)
 **Supported ✅** 
#### Delete Category (delete)
 **Supported ✅** 
#### Update Category (put)
 **Supported ✅** 
## Metadata Schemas
### /v1/metadata-schemas
#### List Metadata Schemas (get)
 **Not supported ❌** 
### /v1/metadata-schemas/{resource}
#### Get Metadata Schema (get)
 **Not supported ❌** 
## Locations
### /v1/locations
#### List Locations (get)
 **Not supported ❌** 
### /v1/locations/{locationId}
#### Get Location (get)
 **Not supported ❌** 
## Referrals
### /v1/referrals/{campaignId}/members/{memberId}/holders
#### List Referral Code Holders [Beta] (get)
 **Not supported ❌** 
### /v1/referrals/members/{memberId}/holders
#### List Referral Code Holders [Beta] (get)
 **Not supported ❌** 
## Bin
### /v1/trash-bin
#### List Bin Entries (get)
 **Not supported ❌** 
### /v1/trash-bin/{binEntryId}
#### Delete Bin Entry (delete)
 **Not supported ❌** 
## Management
### /management/v1/projects
#### Create Project (post)
 **Not supported ❌** 
#### List Projects (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}
#### Get Project (get)
 **Not supported ❌** 
#### Update Project (put)
 **Not supported ❌** 
#### Delete Project (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/users
#### Assign User (post)
 **Not supported ❌** 
#### List Users (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/users/{userId}
#### Get User (get)
 **Not supported ❌** 
#### Update User (put)
 **Not supported ❌** 
#### Unassign User (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/stacking-rules
#### Create Stacking Rules (post)
 **Not supported ❌** 
#### List Stacking Rules (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/stacking-rules/{stackingRulesId}
#### Get Stacking Rules (get)
 **Not supported ❌** 
#### Update Stacking Rules (put)
 **Not supported ❌** 
#### Delete Stacking Rules (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/metadata-schemas
#### Create Metadata Schema (post)
 **Not supported ❌** 
#### List Metadata Schemas (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/metadata-schemas/{metadataSchemaId}
#### Get Metadata Schema (get)
 **Not supported ❌** 
#### Update Metadata Schema (put)
 **Not supported ❌** 
#### Delete Metadata Schema (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/custom-event-schemas
#### Create Custom Event Schema (post)
 **Not supported ❌** 
#### List Custom Event Schemas (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/custom-event-schemas/{customEventSchemaId}
#### Get Custom Event Schema (get)
 **Not supported ❌** 
#### Update Custom Event Schema (put)
 **Not supported ❌** 
#### Delete Custom Event Schema (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/webhooks
#### Create Webhook (post)
 **Not supported ❌** 
#### List Webhooks (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/webhooks/{webhookId}
#### Get Webhook (get)
 **Not supported ❌** 
#### Update Webhook (put)
 **Not supported ❌** 
#### Delete Webhook (delete)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/branding
#### Create Brand (post)
 **Not supported ❌** 
#### List Brands (get)
 **Not supported ❌** 
### /management/v1/projects/{projectId}/branding/{brandingId}
#### Get Brand (get)
 **Not supported ❌** 
#### Update Brand (put)
 **Not supported ❌** 
#### Delete Brand (delete)
 **Not supported ❌** 
## Client-side
### /client/v1/qualifications
#### Check Eligibility (client-side) (post)
 **Supported ✅** 
### /client/v1/promotions/tiers
#### List Promotion Tiers (client-side) (get)
 **Not supported ❌** 
### /client/v1/redemptions
#### Redeem Stackable Discounts (client-side) (post)
 **Supported ✅** 
### /client/v1/validations
#### Validate Stackable Discounts (client-side) (post)
 **Supported ✅** 
### /client/v1/customers/{customerId}/consents
#### Update Customer's consents (client-side) (put)
 **Supported ✅** 
### /client/v1/events
#### Track Custom Event (client-side) (post)
 **Supported ✅** 
### /client/v1/consents
#### List Consents (client-side) (get)
 **Not supported ❌** 
### ~~❗/client/v1/validate [Deprecated]❗~~
#### ~~❗Validate Voucher (client-side) [Deprecated] (get)❗~~
### ~~❗/client/v1/redeem [Deprecated]❗~~
#### ~~❗Redeem Voucher (client-side) [Deprecated] (post)❗~~
### /client/v1/publish
#### Create Publication (client-side) (post)
 **Not supported ❌** 