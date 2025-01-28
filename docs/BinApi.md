# VoucherifySdk::BinApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_bin_entry**](BinApi.md#delete_bin_entry) | **DELETE** /v1/trash-bin/{binEntryId} | Delete Bin Entry |
| [**list_bin_entries**](BinApi.md#list_bin_entries) | **GET** /v1/trash-bin | List Bin Entries |


## delete_bin_entry

> delete_bin_entry(bin_entry_id)

Delete Bin Entry

Deletes permanently a bin entry with a given ID.The following resources can be moved to the bin and permanently deleted: - campaigns - vouchers - products - SKUs To use this endpoint and delete a given resource type, you must have the following permissions: - vouchers.delete to delete a voucher, - campaigns.delete to delete a campaign, - products.delete to delete a product or SKU.

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

api_instance = VoucherifySdk::BinApi.new
bin_entry_id = 'bin_entry_id_example' # String | Provide the unique identifier of the bin entry.

begin
  # Delete Bin Entry
  api_instance.delete_bin_entry(bin_entry_id)
rescue VoucherifySdk::ApiError => e
  puts "Error when calling BinApi->delete_bin_entry: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bin_entry_id** | **String** | Provide the unique identifier of the bin entry. |  |

### Return type

nil (empty response body)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_bin_entries

> <TrashBinListResponseBody> list_bin_entries(opts)

List Bin Entries

Retrieves a list of resources moved to the bin. The following resources can be moved to the bin: - campaigns - vouchers - products - SKUs To use this endpoint, you must have the following permissions: - vouchers.read - campaigns.read - products.read

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

api_instance = VoucherifySdk::BinApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListBin::ID, # ParameterOrderListBin | Orders the bin entries according to the bin entry ID. The dash - preceding a sorting option means sorting in a descending order.
  starting_after_id: 'starting_after_id_example', # String | A cursor for pagination. It retrieves the results starting after a result with the given ID.
  filters: VoucherifySdk::ParameterFiltersListBin.new # ParameterFiltersListBin | Filters for listing bin entries.
}

begin
  # List Bin Entries
  result = api_instance.list_bin_entries(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling BinApi->list_bin_entries: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListBin**](.md) | Orders the bin entries according to the bin entry ID. The dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **starting_after_id** | **String** | A cursor for pagination. It retrieves the results starting after a result with the given ID. | [optional] |
| **filters** | [**ParameterFiltersListBin**](.md) | Filters for listing bin entries. | [optional] |

### Return type

[**TrashBinListResponseBody**](TrashBinListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

