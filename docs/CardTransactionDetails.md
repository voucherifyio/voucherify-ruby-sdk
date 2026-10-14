# VoucherifySdk::CardTransactionDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | Reason for the transaction (e.g. the reason provided in a manual adjustment request). | [optional] |
| **rejection** | [**CardTransactionDetailsRejection**](CardTransactionDetailsRejection.md) |  | [optional] |
| **metadata** | **Object** | Transaction metadata (empty object when none). | [optional] |
| **points** | [**CardTransactionDetailsPoints**](CardTransactionDetailsPoints.md) |  | [optional] |
| **bucket** | [**LoyaltyV2CardPointsBucketSimple**](LoyaltyV2CardPointsBucketSimple.md) |  | [optional] |
| **buckets** | [**Array&lt;LoyaltyV2CardPointsBucketSimple&gt;**](LoyaltyV2CardPointsBucketSimple.md) | The points buckets that expired (&#x60;POINTS_EXPIRED&#x60; only). | [optional] |
| **date** | **Date** | Expiration date (&#x60;POINTS_EXPIRED&#x60; only, &#x60;YYYY-MM-DD&#x60;). | [optional] |
| **reward** | [**CardTransactionDetailsReward**](CardTransactionDetailsReward.md) |  | [optional] |
| **reward_transaction** | [**CardTransactionDetailsRewardTransaction**](CardTransactionDetailsRewardTransaction.md) |  | [optional] |
| **card_transaction** | [**CardTransactionDetailsCardTransaction**](CardTransactionDetailsCardTransaction.md) |  | [optional] |
| **purchase** | [**CardTransactionDetailsPurchase**](CardTransactionDetailsPurchase.md) |  | [optional] |
| **order** | [**CardTransactionDetailsOrder**](CardTransactionDetailsOrder.md) |  | [optional] |
| **order_transaction** | [**CardTransactionDetailsOrderTransaction**](CardTransactionDetailsOrderTransaction.md) |  | [optional] |
| **target_card** | [**CardTransactionDetailsTargetCard**](CardTransactionDetailsTargetCard.md) |  | [optional] |
| **purchase_transaction** | [**CardTransactionDetailsPurchaseTransaction**](CardTransactionDetailsPurchaseTransaction.md) |  | [optional] |

