# VoucherifySdk::VouchersApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_voucher**](VouchersApi.md#disable_voucher) | **POST** /v1/vouchers/{code}/disable | Disable Voucher |
| [**enable_voucher**](VouchersApi.md#enable_voucher) | **POST** /v1/vouchers/{code}/enable | Enable Voucher |
| [**export_voucher_transactions**](VouchersApi.md#export_voucher_transactions) | **POST** /v1/vouchers/{code}/transactions/export | Export Voucher Transactions |
| [**get_voucher**](VouchersApi.md#get_voucher) | **GET** /v1/vouchers/{code} | Get Voucher |
| [**import_vouchers_using_csv**](VouchersApi.md#import_vouchers_using_csv) | **POST** /v1/vouchers/importCSV | Import Vouchers using CSV |
| [**list_voucher_transactions**](VouchersApi.md#list_voucher_transactions) | **GET** /v1/vouchers/{code}/transactions | List Voucher Transactions |
| [**update_voucher_balance**](VouchersApi.md#update_voucher_balance) | **POST** /v1/vouchers/{code}/balance | Add or Remove Voucher Balance |


## disable_voucher

> <VouchersDisableResponseBody> disable_voucher(code)

Disable Voucher

There are various times when you'll want to manage a voucher's accessibility. This can be done by two API methods for managing the voucher state - *enable* and *disable*.   ___ This method sets the voucher state to **inactive**. The voucher cannot be redeemed.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'code_example' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.

begin
  # Disable Voucher
  result = api_instance.disable_voucher(code)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->disable_voucher: #{e}"
end
```

#### Using the disable_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersDisableResponseBody>, Integer, Hash)> disable_voucher_with_http_info(code)

```ruby
begin
  # Disable Voucher
  data, status_code, headers = api_instance.disable_voucher_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersDisableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->disable_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. &#x60;v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u&#x60;. |  |

### Return type

[**VouchersDisableResponseBody**](VouchersDisableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_voucher

> <VouchersEnableResponseBody> enable_voucher(code)

Enable Voucher

There are various times when you'll want to manage a voucher's accessibility. This can be done by two API methods for managing the voucher state - *enable* and *disable*.   ___ The method sets the voucher state to **active**. The voucher can be redeemed - only if the redemption occurs after the start date and the voucher is not expired.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'code_example' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.

begin
  # Enable Voucher
  result = api_instance.enable_voucher(code)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->enable_voucher: #{e}"
end
```

#### Using the enable_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersEnableResponseBody>, Integer, Hash)> enable_voucher_with_http_info(code)

```ruby
begin
  # Enable Voucher
  data, status_code, headers = api_instance.enable_voucher_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersEnableResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->enable_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. &#x60;v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u&#x60;. |  |

### Return type

[**VouchersEnableResponseBody**](VouchersEnableResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_voucher_transactions

> <VouchersTransactionsExportCreateResponseBody> export_voucher_transactions(code, opts)

Export Voucher Transactions

Export transactions that are associated with credit movements on a gift card or loyalty card.  | **Field** | **Definition** | **Example Export** | |:---|:---|:---| | id | Unique transaction ID. | vtx_0cb7811f1c07765800 | | type | Transaction type. | - `CREDITS_REMOVAL` <br> - `CREDITS_ADDITION` <br> - `CREDITS_REFUND` <br> - `CREDITS_REDEMPTION` <br> - `POINTS_ACCRUAL` <br> - `POINTS_CANCELLATION` <br> - `POINTS_REDEMPTION`<br> - `POINTS_REFUND`<br> - `POINTS_ADDITION`<br> - `POINTS_REMOVAL`<br> - `POINTS_EXPIRATION`<br> - `POINTS_TRANSFER_IN`<br> - `POINTS_TRANSFER_OUT` | | source_id | Unique transaction source ID. | 8638 | | reason | Contains the reason for the transaction if one was included originally. |  | | balance | The gift card or loyalty card balance after the transaction. |  | | amount | The amount of gift card or loyalty card credits being allocated during the transaction. This value can either be negative or positive depending on the nature of the transaction. |  | | created_at | Timestamp in ISO 8601 format representing the date and time when the transaction was created. | 2022-03-09T09:16:32.521Z  | | voucher_id | Unique Voucher ID. | v_dky7ksKfPX50Wb2Bxvcoeb1xT20b6tcp | | campaign_id | Parent campaign ID. | camp_FNYR4jhqZBM9xTptxDGgeNBV | | source|  Channel through which the transaction was initiated. | API | | details | More detailed information stored in the form of a JSON. | Provides more details related to the transaction in the form of an object. | | related_transaction_id | Unique transaction ID related to a receiver/donor card in the case of a points transfer from/to another card. | vtx_0c9afe802593b34b80 |

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'GIFT-CARD-1' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.
opts = {
  vouchers_transactions_export_create_request_body: VoucherifySdk::VouchersTransactionsExportCreateRequestBody.new # VouchersTransactionsExportCreateRequestBody | Specify the parameters for the transaction export.
}

begin
  # Export Voucher Transactions
  result = api_instance.export_voucher_transactions(code, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->export_voucher_transactions: #{e}"
end
```

#### Using the export_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersTransactionsExportCreateResponseBody>, Integer, Hash)> export_voucher_transactions_with_http_info(code, opts)

```ruby
begin
  # Export Voucher Transactions
  data, status_code, headers = api_instance.export_voucher_transactions_with_http_info(code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersTransactionsExportCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->export_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. &#x60;v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u&#x60;. |  |
| **vouchers_transactions_export_create_request_body** | [**VouchersTransactionsExportCreateRequestBody**](VouchersTransactionsExportCreateRequestBody.md) | Specify the parameters for the transaction export. | [optional] |

### Return type

[**VouchersTransactionsExportCreateResponseBody**](VouchersTransactionsExportCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_voucher

> <VouchersGetResponseBody> get_voucher(code)

Get Voucher

Retrieves the voucher with the given `code` or unique Voucherify ID. You can either pass the voucher ID which was assigned by Voucherify, e.g., `v_7HxHkf4VAkMuc8u4lZs78lyRwhRze5UE`, or the `code` of the voucher as the path parameter value, e.g., `7fjWdr`.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'code_example' # String | A unique **code** that identifies the voucher.

begin
  # Get Voucher
  result = api_instance.get_voucher(code)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->get_voucher: #{e}"
end
```

#### Using the get_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersGetResponseBody>, Integer, Hash)> get_voucher_with_http_info(code)

```ruby
begin
  # Get Voucher
  data, status_code, headers = api_instance.get_voucher_with_http_info(code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersGetResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->get_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A unique **code** that identifies the voucher. |  |

### Return type

[**VouchersGetResponseBody**](VouchersGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_vouchers_using_csv

> <VouchersImportCsvCreateResponseBody> import_vouchers_using_csv(file)

Import Vouchers using CSV

Import standalone vouchers into the repository using a CSV file.  The CSV file has to include headers in the first line. All properties listed in the file headers that cannot be mapped to standard voucher fields will be added to the metadata object.    You can find an example CSV file [here](https://support.voucherify.io/article/45-import-codes-and-share-them-digitally#coupons). ___ <!-- title: \"cURL Example Request\" lineNumbers: true --> ```cURL cURL example curl -X POST \\   https://api.voucherify.io/v1/vouchers/importCSV \\   -F file=@/path/to/vouchers.csv \\   -H \"X-App-Id: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\" \\   -H \"X-App-Token: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\" ```  <!-- theme: info -->  > 📘 Standard voucher fields mapping > > - Go to the <!-- [import vouchers](OpenAPI.json/paths/~1vouchers~1import) -->[import vouchers](ref:import-vouchers) endpoint to see all standard CSV fields description (body params section). > - Supported CSV file headers: Code,Voucher Type,Value,Discount Type,Category,Start Date,Expiration Date,Redemption Limit,Redeemed Quantity, Redeemed Amount,Active,Additional Info,Custom Metadata Property Name >- **Start and expiration dates** need to be provided in compliance with the ISO 8601 norms. For example, 2020-03-11T09:00:00.000Z.   >    - `YYYY-MM-DD` >    - `YYYY-MM-DDTHH` >    - `YYYY-MM-DDTHH:mm` >    - `YYYY-MM-DDTHH:mm:ss` >    - `YYYY-MM-DDTHH:mm:ssZ` >    - `YYYY-MM-DDTHH:mm:ssZ` >    - `YYYY-MM-DDTHH:mm:ss.SSSZ` > - Custom code attributes (not supported by-default) need to be added as code **metadata**. > - You **cannot import the same codes** to a single Voucherify Project.  <!-- theme: info -->  > 📘 Categories > > In the structure representing your data, you can define a category that the voucher belongs to. You can later use the category of a voucher to group and search by specific criteria in the Dashboard and using the [List Vouchers](ref:list-vouchers) endpoint.  This API request starts a process that affects Voucherify data in bulk.   In case of small jobs (like bulk update) the request is put into a queue and processed once every other bulk request placed in the queue prior to this request is finished. However, when the job takes a longer time (like vouchers generation) then it is processed in small portions in a round-robin fashion. When there is a list of vouchers generation scheduled, then they will all have the `IN_PROGRESS` status shortly. This way, small jobs added just after scheduling big jobs of the same type will be processed in a short time window.   The result will return the async ID. You can verify the status of your request via this [API request](ref:get-async-action).

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
file = File.new('/path/to/some/file') # File | File path.

begin
  # Import Vouchers using CSV
  result = api_instance.import_vouchers_using_csv(file)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->import_vouchers_using_csv: #{e}"
end
```

#### Using the import_vouchers_using_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersImportCsvCreateResponseBody>, Integer, Hash)> import_vouchers_using_csv_with_http_info(file)

```ruby
begin
  # Import Vouchers using CSV
  data, status_code, headers = api_instance.import_vouchers_using_csv_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersImportCsvCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->import_vouchers_using_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File path. |  |

### Return type

[**VouchersImportCsvCreateResponseBody**](VouchersImportCsvCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## list_voucher_transactions

> <VouchersTransactionsListResponseBody> list_voucher_transactions(code, opts)

List Voucher Transactions

List transactions that are associated with credit movements on a gift card or loyalty card.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'code_example' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56 # Integer | Which page of results to return. The lowest value is `1`.
}

begin
  # List Voucher Transactions
  result = api_instance.list_voucher_transactions(code, opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->list_voucher_transactions: #{e}"
end
```

#### Using the list_voucher_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersTransactionsListResponseBody>, Integer, Hash)> list_voucher_transactions_with_http_info(code, opts)

```ruby
begin
  # List Voucher Transactions
  data, status_code, headers = api_instance.list_voucher_transactions_with_http_info(code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersTransactionsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->list_voucher_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. &#x60;v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u&#x60;. |  |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |

### Return type

[**VouchersTransactionsListResponseBody**](VouchersTransactionsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voucher_balance

> <VouchersBalanceUpdateResponseBody> update_voucher_balance(code, vouchers_balance_update_request_body)

Add or Remove Voucher Balance

Add balance to an existing gift card or loyalty card.

### Examples

```ruby
require 'time'
require 'VoucherifySdk'
# setup authorization
VoucherifySdk.configure do |config|
  # Configure API key authorization: X-App-Id
  config.api_key['X-App-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Id'] = 'Bearer'

  # Configure API key authorization: X-App-Token
  config.api_key['X-App-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-App-Token'] = 'Bearer'
end

api_instance = VoucherifySdk::VouchersApi.new
code = 'code_example' # String | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. `v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u`.
vouchers_balance_update_request_body = VoucherifySdk::VouchersBalanceUpdateRequestBody.new({amount: 37}) # VouchersBalanceUpdateRequestBody | Provide the amount to be added to/subtracted from the voucher.

begin
  # Add or Remove Voucher Balance
  result = api_instance.update_voucher_balance(code, vouchers_balance_update_request_body)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_balance: #{e}"
end
```

#### Using the update_voucher_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VouchersBalanceUpdateResponseBody>, Integer, Hash)> update_voucher_balance_with_http_info(code, vouchers_balance_update_request_body)

```ruby
begin
  # Add or Remove Voucher Balance
  data, status_code, headers = api_instance.update_voucher_balance_with_http_info(code, vouchers_balance_update_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VouchersBalanceUpdateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling VouchersApi->update_voucher_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A **code** that identifies the voucher or a unique voucher ID assigned by Voucherify, i.e. &#x60;v_TzD19aeNiqGc9LWciMWknyEZT8IW7u4u&#x60;. |  |
| **vouchers_balance_update_request_body** | [**VouchersBalanceUpdateRequestBody**](VouchersBalanceUpdateRequestBody.md) | Provide the amount to be added to/subtracted from the voucher. |  |

### Return type

[**VouchersBalanceUpdateResponseBody**](VouchersBalanceUpdateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

