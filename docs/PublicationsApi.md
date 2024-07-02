# VoucherifySdk::PublicationsApi

All URIs are relative to *https://api.voucherify.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_publication**](PublicationsApi.md#create_publication) | **POST** /v1/publications | Create Publication |
| [**list_publications**](PublicationsApi.md#list_publications) | **GET** /v1/publications | List Publications |


## create_publication

> <PublicationsCreateResponseBody> create_publication(opts)

Create Publication

This method selects vouchers that are suitable for publication, adds a publish entry and returns the publication.  A voucher is suitable for publication when it's active and hasn't been published yet.    <!-- theme: warning --> > 🚧 Clearly define the source of the voucher > > You must clearly define which source you want to publish the voucher code from. It can either be a code from a campaign or a specific voucher identified by a code.   <!-- theme: warning --> > 🚧 Publish multiple vouchers > In case you want to publish multiple vouchers within a single publication, you need to specify the campaign name and number of vouchers you want to publish.   <!-- theme: info -->  > 📘 Auto-update campaign > > In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use an **auto-update** campaign.

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

api_instance = VoucherifySdk::PublicationsApi.new
opts = {
  join_once: true, # Boolean | Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer.
  publications_create_request_body: VoucherifySdk::CreatePublicationWithCampaign.new({customer: VoucherifySdk::Customer.new, campaign: VoucherifySdk::CreatePublicationCampaign.new({name: 'camp_dphuwqH7BOVkgh4JmpDtS32l'})}) # PublicationsCreateRequestBody | Specify the publication parameters.
}

begin
  # Create Publication
  result = api_instance.create_publication(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PublicationsApi->create_publication: #{e}"
end
```

#### Using the create_publication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicationsCreateResponseBody>, Integer, Hash)> create_publication_with_http_info(opts)

```ruby
begin
  # Create Publication
  data, status_code, headers = api_instance.create_publication_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicationsCreateResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PublicationsApi->create_publication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **join_once** | **Boolean** | Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer. | [optional] |
| **publications_create_request_body** | [**PublicationsCreateRequestBody**](PublicationsCreateRequestBody.md) | Specify the publication parameters. | [optional] |

### Return type

[**PublicationsCreateResponseBody**](PublicationsCreateResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_publications

> <PublicationsListResponseBody> list_publications(opts)

List Publications

Retrieve a list of publications. To return a **particular** publication, you can use the `source_id` query parameter and provide the `source_id` of the publication you are looking for specifically.  ## Pagination  <!-- theme: warning --> > 🚧 Important! > > If you want to scroll through a huge set of records, it is recommended to use the <!-- [Exports API](OpenAPI.json/components/schemas/16_obj_export_object) -->[Exports API](ref:create-export). This API will return an error `page_over_limit` if you reach a page above 1000.  ## Filter Query  The `filters` query parameter allows for joining multiple parameters with logical operators. The syntax looks as follows:  <!-- title: \"Filter template\" --> ```url filters[<field_name>][conditions][<operator>][<index>]=<value> ```  ### Operators:  <!-- title: \"Operators\" --> ```     \"$in\"     \"$not_in\"     \"$is\"     \"$is_not\"     \"$has_value\"     \"$is_unknown\"     \"$contains\"     \"$starts_with\"     \"$ends_with\"     \"$more_than\"     \"$less_than\"     \"$more_than_equal\"     \"$less_than_equal\" ```  ### Examples  <!-- title: \"Example 1 - List publications of a given customer\" --> ```url GET /v1/publications?filters[customer_id][conditions][$is][0]=cust_lUET6gRpO5Wxlg5p2j2gRCgL ``` <!-- title: \"Example 2 - List publications of 2 customers\" --> ```url GET /v1/publications?filters[customer_id][conditions][$in][0]=cust_lUET6gRpO5Wxlg5p2j2gRCgL&filters[customer_id][conditions][$in][1]=cust_aR7NfHusxT7PdTMAKMfWDXnc ``` <!-- title: \"Example 3 - List publications of 2 customers using junction operator\" --> ```url GET /v1/publications?filters[customer_id][conditions][$is][0]=cust_lUET6gRpO5Wxlg5p2j2gRCgL&filters[customer_id][conditions][$is][1]=cust_aR7NfHusxT7PdTMAKMfWDXnc&filters[junction]=OR ```

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

api_instance = VoucherifySdk::PublicationsApi.new
opts = {
  limit: 56, # Integer | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
  page: 56, # Integer | Which page of results to return. The lowest value is `1`.
  order: VoucherifySdk::ParameterOrderListPublications::ID, # ParameterOrderListPublications | Sorts the results using one of the filtering options, where the dash `-` preceding a sorting option means sorting in a descending order.
  campaign: 'campaign_example', # String | Filters by a given campaign name.
  customer: 'customer_example', # String | Filters by a unique customer ID.
  voucher: 'voucher_example', # String | Filters by a given voucher code.
  result: VoucherifySdk::ParameterResultListPublications::SUCCESS, # ParameterResultListPublications | Filters by a publication result.
  voucher_type: VoucherifySdk::ParameterVoucherTypeListPublications::DISCOUNT, # ParameterVoucherTypeListPublications | Filters by a voucher type.
  is_referral_code: true, # Boolean | This filter works only for the `true` option. If set to `true`, the query returns only publications of codes from referral campaigns. 
  filters: 'filters_example', # String | Allows for combining the filters mentioned in the endpoint description.
  source_id: 'source_id_example' # String | Using this endpoint with a particular publication `source_id`, which was sent with the original request to create a publication, returns in the response, exactly the same code published initially because the code was assigned to the given publication. As a result, you can use this endpoint as a reference and return a code that was assigned in a publication by using a particular `source_id`.
}

begin
  # List Publications
  result = api_instance.list_publications(opts)
  p result
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PublicationsApi->list_publications: #{e}"
end
```

#### Using the list_publications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicationsListResponseBody>, Integer, Hash)> list_publications_with_http_info(opts)

```ruby
begin
  # List Publications
  data, status_code, headers = api_instance.list_publications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicationsListResponseBody>
rescue VoucherifySdk::ApiError => e
  puts "Error when calling PublicationsApi->list_publications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items. | [optional] |
| **page** | **Integer** | Which page of results to return. The lowest value is &#x60;1&#x60;. | [optional] |
| **order** | [**ParameterOrderListPublications**](.md) | Sorts the results using one of the filtering options, where the dash &#x60;-&#x60; preceding a sorting option means sorting in a descending order. | [optional] |
| **campaign** | **String** | Filters by a given campaign name. | [optional] |
| **customer** | **String** | Filters by a unique customer ID. | [optional] |
| **voucher** | **String** | Filters by a given voucher code. | [optional] |
| **result** | [**ParameterResultListPublications**](.md) | Filters by a publication result. | [optional] |
| **voucher_type** | [**ParameterVoucherTypeListPublications**](.md) | Filters by a voucher type. | [optional] |
| **is_referral_code** | **Boolean** | This filter works only for the &#x60;true&#x60; option. If set to &#x60;true&#x60;, the query returns only publications of codes from referral campaigns.  | [optional] |
| **filters** | **String** | Allows for combining the filters mentioned in the endpoint description. | [optional] |
| **source_id** | **String** | Using this endpoint with a particular publication &#x60;source_id&#x60;, which was sent with the original request to create a publication, returns in the response, exactly the same code published initially because the code was assigned to the given publication. As a result, you can use this endpoint as a reference and return a code that was assigned in a publication by using a particular &#x60;source_id&#x60;. | [optional] |

### Return type

[**PublicationsListResponseBody**](PublicationsListResponseBody.md)

### Authorization

[X-App-Id](../README.md#X-App-Id), [X-App-Token](../README.md#X-App-Token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

