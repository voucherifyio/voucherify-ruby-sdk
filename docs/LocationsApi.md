# VoucherifySdk::LocationsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_location**](LocationsApi.md#get_location) | **GET** /v1/locations/{locationId} | Get Location |
| [**list_locations**](LocationsApi.md#list_locations) | **GET** /v1/locations | List Locations |


## get_location

> <LocationsGetResponseBody> get_location(location_id)

Get Location

Returns a location object.

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

api_instance = VoucherifySdk::LocationsApi.new
location_id = 'location_id_example' # String | The unique location ID.

begin
  # Get Location
  result = api_instance.get_location(location_id)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LocationsApi->get_location: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | The unique location ID. |  |

### Return type

[**LocationsGetResponseBody**](LocationsGetResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_locations

> <LocationsListResponseBody> list_locations(opts)

List Locations

Returns a list of your locations.

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

api_instance = VoucherifySdk::LocationsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  order: VoucherifySdk::ParameterOrderListLocations::CREATED_AT, # ParameterOrderListLocations | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
  filters: VoucherifySdk::ParameterFiltersListLocations.new, # ParameterFiltersListLocations | Filter the locations using one of the available filters.
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | A filter on the list based on the end date. This will filter out all locations whose end date falls before the specified date and time. A date value must be presented in the ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16).
}

begin
  # List Locations
  result = api_instance.list_locations(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling LocationsApi->list_locations: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **order** | [**ParameterOrderListLocations**](.md) | Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order. | [optional] |
| **filters** | [**ParameterFiltersListLocations**](.md) | Filter the locations using one of the available filters. | [optional] |
| **end_date** | **Time** | A filter on the list based on the end date. This will filter out all locations whose end date falls before the specified date and time. A date value must be presented in the ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16). | [optional] |

### Return type

[**LocationsListResponseBody**](LocationsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

