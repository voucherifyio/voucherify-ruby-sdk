# VoucherifySdk::CustomerActivityDataRedemptionVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **campaign** | **String** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **category** | **String** | Tag defining the category that this voucher belongs to. Useful when listing vouchers using the List Vouchers endpoint. | [optional] |
| **category_id** | **String** |  | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Contains details about the category. | [optional] |
| **type** | **String** |  | [optional] |
| **discount** | [**Discount**](Discount.md) |  | [optional] |
| **gift** | [**CustomerActivityDataRedemptionVoucherGift**](CustomerActivityDataRedemptionVoucherGift.md) |  | [optional] |
| **loyalty_card** | [**CustomerActivityDataRedemptionVoucherLoyaltyCard**](CustomerActivityDataRedemptionVoucherLoyaltyCard.md) |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **expiration_date** | **Time** | Expiration timestamp defines when the code expires in ISO 8601 format.  Voucher is *inactive after* this date. | [optional] |
| **validity_timeframe** | [**CustomerActivityDataRedemptionVoucherValidityTimeframe**](CustomerActivityDataRedemptionVoucherValidityTimeframe.md) |  | [optional] |
| **validity_day_of_week** | **Array&lt;Integer&gt;** | Integer array corresponding to the particular days of the week in which the voucher is valid.  - &#x60;0&#x60; Sunday - &#x60;1&#x60; Monday - &#x60;2&#x60; Tuesday - &#x60;3&#x60; Wednesday - &#x60;4&#x60; Thursday - &#x60;5&#x60; Friday - &#x60;6&#x60; Saturday | [optional] |
| **validity_hours** | [**ValidityHours**](ValidityHours.md) |  | [optional] |
| **active** | **Boolean** | A flag to toggle the voucher on or off. You can disable a voucher even though it&#39;s within the active period defined by the &#x60;start_date&#x60; and &#x60;expiration_date&#x60;.    - &#x60;true&#x60; indicates an *active* voucher - &#x60;false&#x60; indicates an *inactive* voucher and Shows whether the voucher is on or off. &#x60;true&#x60; indicates an *active* voucher and &#x60;false&#x60; indicates an *inactive* voucher. | [optional] |
| **additional_info** | **String** | An optional field to keep any extra textual information about the code such as a code description and details. | [optional] |
| **metadata** | **Object** |  | [optional] |
| **assets** | [**VoucherAssets**](VoucherAssets.md) |  | [optional] |
| **is_referral_code** | **Boolean** | Flag indicating whether this voucher is a referral code; &#x60;true&#x60; for campaign type &#x60;REFERRAL_PROGRAM&#x60;. | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **holder_id** | **String** |  | [optional] |
| **referrer_id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **validation_rules_assignments** | [**ValidationRulesAssignmentsList**](ValidationRulesAssignmentsList.md) |  | [optional] |
| **publish** | [**CustomerActivityDataRedemptionVoucherPublish**](CustomerActivityDataRedemptionVoucherPublish.md) |  | [optional] |
| **redemption** | [**CustomerActivityDataRedemptionVoucherRedemption**](CustomerActivityDataRedemptionVoucherRedemption.md) |  | [optional] |
| **holder** | [**SimpleCustomer**](SimpleCustomer.md) |  | [optional] |

