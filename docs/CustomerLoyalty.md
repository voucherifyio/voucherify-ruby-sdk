# VoucherifySdk::CustomerLoyalty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **points** | **Integer** | Customer&#39;s loyalty points minus expired for all loyalty cards which the customer has. | [optional] |
| **referred_customers** | **Integer** | Total number of customers referred by the customer. | [optional] |
| **campaigns** | [**Hash&lt;String, CustomerLoyaltyCampaignsEntry&gt;**](CustomerLoyaltyCampaignsEntry.md) | Contains campaigns with details about point balances and how many customers were referred by the customer. | [optional] |

