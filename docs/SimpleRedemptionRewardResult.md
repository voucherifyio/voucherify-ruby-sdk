# VoucherifySdk::SimpleRedemptionRewardResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |
| **assignment_id** | **String** | Unique reward assignment ID assigned by Voucherify. | [optional] |
| **voucher** | [**SimpleVoucher**](SimpleVoucher.md) |  | [optional] |
| **product** | [**SimpleProduct**](SimpleProduct.md) |  | [optional] |
| **sku** | [**SimpleSku**](SimpleSku.md) |  | [optional] |
| **loyalty_tier_id** | **String** | Unique loyalty tier ID assigned by Voucherify. | [optional] |
| **id** | **String** | Unique reward ID, assigned by Voucherify. | [optional] |
| **object** | **String** | The type of object represented by the JSON. This object stores information about the reward. | [optional][default to &#39;reward&#39;] |
| **name** | **String** | Reward name. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the reward was created in ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the reward was updated in ISO 8601 format. | [optional] |
| **parameters** | **Object** | Defines how the reward is generated. | [optional] |
| **type** | **String** | Reward type. | [optional] |

