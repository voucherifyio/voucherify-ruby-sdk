# VoucherifySdk::ListPublicationsItemInvalid

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique publication ID, assigned by Voucherify. |  |
| **object** | **String** | The type of the object represented by the JSON. This object stores information about the &#x60;publication&#x60;. | [default to &#39;publication&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the publication was created. The value is shown in the ISO 8601 format. |  |
| **customer_id** | **String** | Unique customer ID of the customer receiving the publication. |  |
| **tracking_id** | **String** | Customer&#39;s &#x60;source_id&#x60;. | [optional] |
| **metadata** | [**ListPublicationsItemBaseMetadata**](ListPublicationsItemBaseMetadata.md) |  |  |
| **channel** | **String** | How the publication was originated. It can be your own custom channel or an example value provided here. |  |
| **source_id** | **String** | The merchant’s publication ID if it is different from the Voucherify publication ID. It&#39;s an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service.  |  |
| **customer** | [**CustomerWithSummaryLoyaltyReferrals**](CustomerWithSummaryLoyaltyReferrals.md) |  |  |
| **vouchers_id** | **Array&lt;String&gt;** | Contains the unique internal voucher ID that was assigned by Voucherify. |  |
| **result** | **String** | Status of the publication attempt. | [default to &#39;FAILURE&#39;] |
| **failure_code** | **String** | Generic reason as to why the create publication operation failed. | [optional] |
| **failure_message** | **String** | This parameter will provide more expanded reason as to why the create publication operation failed. | [optional] |
