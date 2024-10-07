# VoucherifySdk::ManagementProjectsStackingRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the stacking rules. | [optional] |
| **exclusive_categories** | **Array&lt;String&gt;** | Lists the IDs of the categories that are exclusive. | [optional] |
| **joint_categories** | **Array&lt;String&gt;** | Lists the IDs of the categories that are joint. | [optional] |
| **redeemables_limit** | **Integer** | Defines how many redeemables can be sent to Voucherify for validation at the same time. | [optional] |
| **applicable_redeemables_limit** | **Integer** | Defines how many redeemables can be applied at the same time. The number must be less than or equal to &#x60;\&quot;redeemables_limit\&quot;&#x60;. | [optional] |
| **applicable_redeemables_per_category_limit** | **Integer** | Defines how many redeemables with the same category can be applied at the same time. The number must be less than or equal to &#x60;\&quot;applicable_redeemables_limit\&quot;&#x60;. | [optional] |
| **applicable_exclusive_redeemables_limit** | **Integer** | Defines how many redeemables with an assigned exclusive category can be applied at the same time. | [optional] |
| **applicable_exclusive_redeemables_per_category_limit** | **Integer** | Defines how many exclusive redeemables with the same category can be applied at the same time. The number must be less than or equal to &#x60;\&quot;applicable_exclusive_redeemables_limit\&quot;&#x60;. | [optional] |
| **discount_calculation_mode** | **String** | Defines if the discounts are applied by taking into account the initial order amount or the discounted order amount. | [optional] |
| **initial_amount_mode_categories** | **Array&lt;String&gt;** | Lists the IDs of the categories that apply a discount based on the initial amount. | [optional] |
| **discounted_amount_mode_categories** | **Array&lt;String&gt;** | Lists the IDs of the categories that apply a discount based on the discounted amount. | [optional] |
| **redeemables_application_mode** | **String** | Defines the application mode for redeemables. &#x60;\&quot;ALL\&quot;&#x60; means that all redeemables must be validated for the redemption to be successful. &#x60;\&quot;PARTIAL\&quot;&#x60; means that only those redeemables that can be validated will be redeemed. The redeemables that fail validaton will be skipped. | [optional] |
| **redeemables_sorting_rule** | **String** | Defines the sorting rule for redeemables. &#x60;\&quot;CATEGORY_HIERARCHY\&quot;&#x60; means that redeemables are applied with the order established by the hierarchy of the categories. &#x60;\&quot;REQUESTED_ORDER\&quot;&#x60; means that redeemables are applied with the order established in the request. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the stacking rules were created. The value for this parameter is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the stacking rules were updated. The value for this parameter is shown in the ISO 8601 format. | [optional] |

