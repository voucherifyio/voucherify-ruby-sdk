# VoucherifySdk::ExportParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | **String** |  | [optional] |
| **fields** | **Array&lt;String&gt;** | Array of strings containing the data in the export. These fields define the headers in the CSV file. | [optional] |
| **filters** | **Object** | Allowed additional properties must start with \&quot;metadata.\&quot; or \&quot;redemption.\&quot; and Allowed additional properties must start with \&quot;metadata.\&quot; and Allowed additional properties must start with \&quot;metadata.\&quot; or \&quot;address.\&quot; or \&quot;summary.\&quot; or \&quot;loyalty.\&quot; or \&quot;loyalty_tier.\&quot; or \&quot;loyalty_points.\&quot; or \&quot;system_metadata.\&quot; | [optional] |
| **campaign_id** | **String** | Unique identifier of the campaign. It is assigned by Voucherify. The campaign ID defines the campaign for which the voucher export will be triggered. | [optional] |

