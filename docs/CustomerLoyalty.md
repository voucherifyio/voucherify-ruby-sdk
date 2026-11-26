# VoucherifySdk::CustomerLoyalty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | Customer&#39;s loyalty points minus expired points for all loyalty cards (**legacy loyalty**) which the customer has. | [optional] |
| **referred_customers** | **Integer** | Total number of customers referred by the customer. | [optional] |
| **campaigns** | [**Hash&lt;String, CustomerLoyaltyCampaignsEntry&gt;**](CustomerLoyaltyCampaignsEntry.md) | Contains **legacy loyalty** and referral campaigns with details about point balances and how many customers were referred by the customer. | [optional] |

