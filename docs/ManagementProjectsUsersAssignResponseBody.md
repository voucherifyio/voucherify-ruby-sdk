# VoucherifySdk::ManagementProjectsUsersAssignResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the user who has been assigned to the project. | [optional] |
| **login** | **String** | The login data of the user who has been assigned to the project. | [optional] |
| **email** | **String** | The email address of the user who has been assigned to the project. | [optional] |
| **first_name** | **String** | The first name of the user who has been assigned to the project. | [optional] |
| **last_name** | **String** | The last name of the user who has been assigned to the project. | [optional] |
| **projects** | **Hash&lt;String, String&gt;** | Lists key-value pairs, where the key is the project to which the user is assigned. The value is the role assigned in a given project. The predefined Voucherify roles are: &#x60;ADMIN&#x60;, &#x60;USER&#x60;, &#x60;VIEWER&#x60;, &#x60;MERCHANT&#x60;, &#x60;USER_RESTRICTED&#x60; (for the Areas and Stores, an Enterprise feature). | [optional] |
| **is_owner** | **Boolean** | Determines if the user is the owner for the organization in Voucherify. | [optional] |

