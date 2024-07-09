# VoucherifySdk::CustomerActivityDataCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of an existing customer that will be linked to redemption in this request. | [optional] |
| **source_id** | **String** | A unique identifier of the customer who validates a voucher. It can be a customer ID or email from a CRM system, database, or a third-party service. If you also pass a customer ID (unique ID assigned by Voucherify), the source ID will be ignored. | [optional] |
| **summary** | [**CustomerActivityDataCustomerSummary**](CustomerActivityDataCustomerSummary.md) |  | [optional] |
| **loyalty** | [**CustomerActivityDataCustomerLoyalty**](CustomerActivityDataCustomerLoyalty.md) |  | [optional] |
| **referrals** | [**CustomerActivityDataCustomerReferrals**](CustomerActivityDataCustomerReferrals.md) |  | [optional] |
| **system_metadata** | **Object** |  | [optional] |
| **created_at** | **Time** | Timestamp representing the date and time when the customer was created. The value is shown in the ISO 8601 format. | [optional] |
| **updated_at** | **Time** | Timestamp representing the date and time when the customer was updated. The value is shown in the ISO 8601 format. | [optional] |
| **assets** | [**CustomerActivityDataCustomerAssets**](CustomerActivityDataCustomerAssets.md) |  | [optional] |
| **object** | **String** | The type of the object represented by JSON. | [optional][default to &#39;customer&#39;] |
| **name** | **String** | Customer&#39;s first and last name. | [optional] |
| **description** | **String** | An arbitrary string that you can attach to a customer object. | [optional] |
| **email** | **String** | Customer&#39;s email address. | [optional] |
| **phone** | **String** | Customer&#39;s phone number. This parameter is mandatory when you try to send out codes to customers via an SMS channel. | [optional] |
| **birthday** | **Date** | &#x60;Deprecated&#x60;. ~~Customer&#39;s birthdate; format YYYY-MM-DD~~. | [optional] |
| **birthdate** | **Date** | Customer&#39;s birthdate; format YYYY-MM-DD. | [optional] |
| **address** | [**CustomerActivityDataCustomerAddress**](CustomerActivityDataCustomerAddress.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |

