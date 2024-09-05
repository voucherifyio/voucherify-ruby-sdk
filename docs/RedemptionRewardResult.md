# VoucherifySdk::RedemptionRewardResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **assignment_id** | **String** | Unique reward assignment ID assigned by Voucherify. | [optional] |
| **voucher** | [**Voucher**](Voucher.md) |  | [optional] |
| **product** | [**Product**](Product.md) |  | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID assigned by Voucherify. | [optional] |
| **id** | **String** | Unique reward ID. | [optional] |
| **name** | **String** | Name of the reward. | [optional] |
| **object** | **String** | The type of the object represented by the JSON | [optional][default to &#39;reward&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the redemption was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp in ISO 8601 format indicating when the reward was updated. | [optional] |
| **parameters** | [**RedemptionRewardResultParameters**](RedemptionRewardResultParameters.md) |  | [optional] |
| **metadata** | **Object** | A set of custom key/value pairs that you can attach to a reward. The metadata object stores all custom attributes assigned to the reward. | [optional] |
| **type** | **String** | Reward type. | [optional] |

