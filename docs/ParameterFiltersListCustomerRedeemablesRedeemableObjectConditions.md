# VoucherifySdk::ParameterFiltersListCustomerRedeemablesRedeemableObjectConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_in** | **Array&lt;String&gt;** | Array of resource values that should be included in the results (multiple values). | [optional] |
| **not_in** | **Array&lt;String&gt;** | Array of resource values that should be included in the results (multiple values). | [optional] |
| **is** | **String** | Value is exactly this value (single value). | [optional][default to &#39;voucher&#39;] |
| **is_not** | **String** | Results omit this value (single value). | [optional][default to &#39;voucher&#39;] |
| **has_value** | **String** | Value is NOT null. The value for this parameter is an empty string. | [optional] |
| **is_unknown** | **String** | Value is null. The value for this parameter is an empty string. | [optional] |
| **starts_with** | **String** | Value starts with the specified string. | [optional] |
| **ends_with** | **String** | Value ends with the specified string. | [optional] |

