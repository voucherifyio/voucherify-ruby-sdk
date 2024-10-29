# VoucherifySdk::VouchersCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code that identifies a voucher. The pattern can use all the letters of the English alphabet, Arabic numerals, and special characters. Pass this attribute in the request body to create a distinct code. Otherwise, either use the &#x60;code_config&#x60; object to set the rules that the Voucherify API will use to create a random code, or don&#39;t pass any code and Voucherify will generate a random code. | [optional] |
| **campaign** | **String** | Identifies the voucher&#39;s parent campaign using a unique campaign name. | [optional] |
| **campaign_id** | **String** | Identifies the voucher&#39;s parent campaign using a unique campaign ID assigned by the Voucherify API. | [optional] |
| **category** | **String** | The name of the category that this voucher belongs to. Useful when listing vouchers with the [List Vouchers](ref:list-vouchers) endpoint. | [optional] |
| **category_id** | **String** | Unique identifier assigned by Voucherify to the name of the category that this voucher belongs to. Useful when listing vouchers with the [List Vouchers](ref:list-vouchers) endpoint. | [optional] |
| **start_date** | **Time** | Start date defines when the code starts to be active. Activation timestamp is presented in the ISO 8601 format. Voucher is *inactive before* this date. | [optional] |
| **expiration_date** | **Time** | Expiration date defines when the code expires. Expiration timestamp is presented in the ISO 8601 format.  Voucher is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **active** | **Boolean** | A flag to toggle the voucher on or off. You can disable a voucher even though it&#39;s within the active period defined by the &#x60;start_date&#x60; and &#x60;expiration_date&#x60;.    - &#x60;true&#x60; indicates an *active* voucher - &#x60;false&#x60; indicates an *inactive* voucher | [optional] |
| **additional_info** | **String** | An optional field to keep any extra textual information about the code such as a code description and details. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the code. A set of key/value pairs that you can attach to a voucher object. It can be useful for storing additional information about the voucher in a structured format. | [optional] |
| **validation_rules** | **Array&lt;String&gt;** | Array containing the ID of the validation rule associated with the voucher. | [optional] |
| **redemption** | [**VouchersCreateRequestBodyRedemption**](VouchersCreateRequestBodyRedemption.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **loyalty_card** | [**SimpleLoyaltyCard**](SimpleLoyaltyCard.md) |  | [optional] |
| **code_config** | [**CodeConfig**](CodeConfig.md) |  | [optional] |
| **gift** | [**Gift**](Gift.md) |  | [optional] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
