# VoucherifySdk::ManagementProjectsMetadataSchemaDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Indicates the type of metadata. Note that &#x60;\&quot;geopoint\&quot;&#x60; type is a paid feature. | [optional] |
| **optional** | **Boolean** | Indicates if this definition is optional or not for the resource. | [optional] |
| **array** | **Boolean** | Indicates if the definition is an array. | [optional] |
| **deleted** | **Boolean** | Indicates if the definition has been deleted from the schema. | [optional] |
| **object_type** | **String** | The name of the custom resource (i.e. a nested object) if the resource has been previously defined. Otherwise, it is &#x60;null&#x60; for other types. | [optional] |
| **min_length** | **Integer** | Value indicating the minimum length. Available only for the &#x60;string&#x60; type. | [optional] |
| **max_length** | **Integer** | Value indicating the maximum length. Available only for the &#x60;string&#x60; type. | [optional] |
| **exact_length** | **Integer** | Value indicating the exact length. Available only for the &#x60;string&#x60; type. | [optional] |
| **eq** | **Array&lt;Object&gt;** |  | [optional] |
| **ne** | **Array&lt;Float&gt;** | Array of values that are not allowed. Available only for the &#x60;number&#x60; type. | [optional] |
| **lt** | **Float** | A property of the &#x60;number&#x60; type must have &#x60;less than&#x60; this value. The value should be up to two decimal places. | [optional] |
| **lte** | **Float** | A property of the &#x60;number&#x60; type must be &#x60;less than or equal&#x60; to this value. The value should be up to two decimal places. | [optional] |
| **gt** | **Float** | A property of &#x60;number&#x60; type must be &#x60;greater than&#x60; this value. The value should be up to two decimal places. | [optional] |
| **gte** | **Float** | A property of &#x60;number&#x60; type must be &#x60;greater than or equal&#x60; to this value. The value should be up to two decimal places. | [optional] |

