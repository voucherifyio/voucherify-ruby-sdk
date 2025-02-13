# VoucherifySdk::RedemptionsListResponseBodyRedemptionsItemVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Assigned by the Voucherify API, identifies the voucher. | [optional] |
| **code** | **String** | A code that identifies a voucher. Pattern can use all letters of the English alphabet, Arabic numerals, and special characters. | [optional] |
| **campaign** | **String** | A unique campaign name, identifies the voucher&#39;s parent campaign. | [optional] |
| **campaign_id** | **String** | Assigned by the Voucherify API, identifies the voucher&#39;s parent campaign. | [optional] |
| **category** | **String** | Tag defining the category that this voucher belongs to. Useful when listing vouchers using the List Vouchers endpoint. | [optional] |
| **category_id** | **String** | Unique category ID assigned by Voucherify. | [optional] |
| **type** | **String** | Defines the type of the voucher.  | [optional] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
| **gift** | [**RedemptionsListResponseBodyRedemptionsItemVoucherGift**](RedemptionsListResponseBodyRedemptionsItemVoucherGift.md) |  | [optional] |
| **loyalty_card** | [**RedemptionsListResponseBodyRedemptionsItemVoucherLoyaltyCard**](RedemptionsListResponseBodyRedemptionsItemVoucherLoyaltyCard.md) |  | [optional] |
| **start_date** | **Time** | Activation timestamp defines when the code starts to be active in ISO 8601 format. Voucher is *inactive before* this date.  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the code expires in ISO 8601 format.  Voucher is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**ValidityTimeframe**](ValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **active** | **Boolean** | A flag to toggle the voucher on or off. You can disable a voucher even though it&#39;s within the active period defined by the &#x60;start_date&#x60; and &#x60;expiration_date&#x60;.    - &#x60;true&#x60; indicates an *active* voucher - &#x60;false&#x60; indicates an *inactive* voucher | [optional] |
| **additional_info** | **String** | An optional field to keep any extra textual information about the code such as a code description and details. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the code. A set of key/value pairs that you can attach to a voucher object. It can be useful for storing additional information about the voucher in a structured format. | [optional] |
| **assets** | [**VoucherAssets**](VoucherAssets.md) |  | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the voucher was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the voucher was last updated in ISO 8601 format. | [optional] |
| **holder_id** | **String** | Unique customer identifier of the redeemable holder. It equals to the customer ID assigned by Voucherify. | [optional] |
| **referrer_id** | **String** | Unique identifier of the referring person. | [optional] |
| **object** | **String** | The type of the object represented by JSON. Default is &#x60;voucher&#x60;. | [optional][default to &#39;voucher&#39;] |
| **publish** | [**RedemptionsListResponseBodyRedemptionsItemVoucherPublish**](RedemptionsListResponseBodyRedemptionsItemVoucherPublish.md) |  | [optional] |
| **redemption** | [**RedemptionsListResponseBodyRedemptionsItemVoucherRedemption**](RedemptionsListResponseBodyRedemptionsItemVoucherRedemption.md) |  | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Contains details about the category. | [optional] |
| **validation_rules_assignments** | [**ValidationRulesAssignmentsList**](ValidationRulesAssignmentsList.md) |  | [optional] |
| **holder** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |

