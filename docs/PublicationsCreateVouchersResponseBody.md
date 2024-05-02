# VoucherifySdk::PublicationsCreateVouchersResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique publication ID, assigned by Voucherify. |  |
| **object** | **String** | The type of object represented by the JSON. This object stores information about the &#x60;publication&#x60;. | [default to &#39;publication&#39;] |
| **created_at** | **Time** | Timestamp representing the date and time when the publication was created in ISO 8601 format. |  |
| **customer_id** | **String** | Unique customer ID of the customer receiving the publication. |  |
| **tracking_id** | **String** | Customer&#39;s &#x60;source_id&#x60;. | [optional] |
| **metadata** | **Object** | The metadata object stores all custom attributes assigned to the publication. A set of key/value pairs that you can attach to a publication object. It can be useful for storing additional information about the publication in a structured format. |  |
| **channel** | **String** | How the publication was originated. It can be your own custom channel or an example value provided here. | [default to &#39;API&#39;] |
| **source_id** | **String** | The merchant’s publication ID if it is different from the Voucherify publication ID. It&#39;s an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service.  |  |
| **result** | **String** | Status of the publication attempt. | [default to &#39;SUCCESS&#39;] |
| **customer** | [**CustomerWithSummaryLoyaltyReferrals**](CustomerWithSummaryLoyaltyReferrals.md) |  |  |
| **vouchers_id** | **Array&lt;String&gt;** | Contains the unique internal voucher ID that was assigned by Voucherify. |  |
| **vouchers** | **Array&lt;String&gt;** | Contains the unique voucher codes that was assigned by Voucherify. |  |

