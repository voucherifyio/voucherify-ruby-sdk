# VoucherifySdk::RedemptionRewardResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  |  |
| **assignment_id** | **String** | Unique reward assignment ID assigned by Voucherify. |  |
| **voucher** | [**RedemptionRewardResultVoucher**](RedemptionRewardResultVoucher.md) |  |  |
| **product** | [**RedemptionRewardResultProduct**](RedemptionRewardResultProduct.md) |  |  |
| **sku** | [**RedemptionRewardResultSku**](RedemptionRewardResultSku.md) |  |  |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID assigned by Voucherify. |  |
| **id** | **String** | Unique reward ID. | [optional] |
| **name** | **String** | Name of the reward. | [optional] |
| **object** | **String** | The type of object represented by the JSON | [optional][default to &#39;reward&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the redemption was created in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp in ISO 8601 format indicating when the reward was updated. | [optional] |
| **parameters** | [**RedemptionRewardResultParameters**](RedemptionRewardResultParameters.md) |  | [optional] |
| **type** | **String** | Reward type. | [optional] |

