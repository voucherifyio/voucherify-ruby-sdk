# VoucherifySdk::PublicationsCreateRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher** | **String** | Code of voucher being published. | [optional] |
| **source_id** | **String** | The merchant’s publication ID if it is different from the Voucherify publication ID. It&#39;s an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service. If &#x60;source_id&#x60; is provided only 1 voucher can be published per request. | [optional] |
| **customer** | [**PublicationsCreateRequestBodyCustomer**](PublicationsCreateRequestBodyCustomer.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **campaign** | [**CreatePublicationCampaign**](CreatePublicationCampaign.md) |  | [optional] |

