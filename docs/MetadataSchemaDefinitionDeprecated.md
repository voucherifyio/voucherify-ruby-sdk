# VoucherifySdk::MetadataSchemaDefinitionDeprecated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **array** | **Boolean** | Indicates whether the definition is an array. | [optional] |
| **optional** | **Boolean** | Indicates whether this definition is optional or not optional for the resource. | [optional] |
| **object_type** | **String** | Returns the name of the custom resource if the resource was previously defined in the Dashboard as a custom (non-standard) Nested object. | [optional] |
| **eq** | **Array&lt;Object&gt;** | Array of possible values when the setting for &#x60;is equal to any of&#x60; in the Dashboard is defined explicitly. | [optional] |
| **ne** | **Array&lt;Object&gt;** | Array of values that are not allowed when the setting for &#x60;is not equal to any of&#x60; in the Dashboard is defined explicitly. | [optional] |
| **lt** | **Integer** | A property of &#x60;number&#x60; type must have &#x60;less than&#x60; this value. | [optional] |
| **lte** | **Integer** | A property of &#x60;number&#x60; type must be &#x60;less than or equal&#x60; to this value. | [optional] |
| **gt** | **Integer** | A property of &#x60;number&#x60; type must be &#x60;greater than&#x60; this value. | [optional] |
| **gte** | **Integer** | A property of &#x60;number&#x60; type must be &#x60;greater than or equal&#x60; to this value. | [optional] |
| **deleted** | **Boolean** | Indicates whether the definition was deleted from the schema. | [optional] |
| **max_length** | **Integer** | Value for maximum length when the setting for &#x60;has maximum length of&#x60; in the Dashboard is defined explicitly. | [optional] |
| **min_length** | **Integer** | Value indicating minimum length when the setting for &#x60;has minimum length of&#x60; in the Dashboard is defined explicitly. | [optional] |
| **exact_length** | **Integer** | Value indicating exact length when the setting for &#x60;has exact length of&#x60; in the Dashboard is defined explicitly. | [optional] |

