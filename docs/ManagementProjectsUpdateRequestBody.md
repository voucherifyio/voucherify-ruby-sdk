# VoucherifySdk::ManagementProjectsUpdateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the project. | [optional] |
| **description** | **String** | A user-defined description of the project, e.g. its purpose, scope, region. | [optional] |
| **timezone** | **String** | The time zone in which the project is established. It can be in the GMT format or in accordance with IANA time zone database. | [optional] |
| **currency** | **String** | The currency used in the project. It is equal to a 3-letter ISO 4217 code. | [optional] |
| **dial_code** | **String** | The country dial code for the project. It is equal to an ITU country code. | [optional] |
| **webhook_version** | **String** | The webhook version used in the project. | [optional][default to &#39;v2024-01-01&#39;] |
| **client_trusted_domains** | **Array&lt;String&gt;** | An array of URL addresses that allow client requests. | [optional] |
| **client_redeem_enabled** | **Boolean** | Enables client-side redemption. | [optional] |
| **client_publish_enabled** | **Boolean** | Enables client-side publication. | [optional] |
| **client_list_vouchers_enabled** | **Boolean** | Enables client-side listing of vouchers. | [optional] |
| **client_create_customer_enabled** | **Boolean** | Enables client-side creation of customers. | [optional] |
| **client_loyalty_events_enabled** | **Boolean** | Enables client-side events for loyalty and referral programs. | [optional] |
| **client_set_voucher_expiration_date_enabled** | **Boolean** | Enables client-side setting of voucher expiration date. | [optional] |
| **webhooks_callout_notifications** | [**ManagementProjectsUpdateRequestBodyWebhooksCalloutNotifications**](ManagementProjectsUpdateRequestBodyWebhooksCalloutNotifications.md) |  | [optional] |
| **api_usage_notifications** | [**ManagementProjectsUpdateRequestBodyApiUsageNotifications**](ManagementProjectsUpdateRequestBodyApiUsageNotifications.md) |  | [optional] |
| **default_code_config** | [**ManagementProjectsUpdateRequestBodyDefaultCodeConfig**](ManagementProjectsUpdateRequestBodyDefaultCodeConfig.md) |  | [optional] |

