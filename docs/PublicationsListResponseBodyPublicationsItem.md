# VoucherifySdk::PublicationsListResponseBodyPublicationsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique publication ID, assigned by Voucherify. | [optional] |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the &#x60;publication&#x60;. | [optional][default to &#39;publication&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the publication was created. The value is shown in the ISO 8601 format. | [optional] |
| **customer_id** | **String** | Unique customer ID of the customer receiving the publication. | [optional] |
| **tracking_id** | **String** | Customer&#39;s &#x60;source_id&#x60;. | [optional] |
| **metadata** | [**PublicationsListResponseBodyPublicationsItemMetadata**](PublicationsListResponseBodyPublicationsItemMetadata.md) |  | [optional] |
| **channel** | **String** | How the publication was originated. It can be your own custom channel or an example value provided here. | [optional] |
| **source_id** | **String** | The merchant&#39;s publication ID if it is different from the Voucherify publication ID. It&#39;s an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service.  | [optional] |
| **customer** | [**CustomerWithSummaryLoyaltyReferrals**](CustomerWithSummaryLoyaltyReferrals.md) |  | [optional] |
| **vouchers** | **Array&lt;String&gt;** | Contains the voucher IDs that was assigned by Voucherify. and Contains the unique voucher codes that was assigned by Voucherify. | [optional] |
| **vouchers_id** | **Array&lt;String&gt;** | Contains the unique internal voucher IDs that was assigned by Voucherify. | [optional] |
| **result** | **String** |  | [optional] |
| **voucher** | [**ListPublicationsItemVoucher**](ListPublicationsItemVoucher.md) |  | [optional] |
| **failure_code** | **String** | Generic reason as to why the create publication operation failed. | [optional] |
| **failure_message** | **String** | This parameter will provide more expanded reason as to why the create publication operation failed. | [optional] |

