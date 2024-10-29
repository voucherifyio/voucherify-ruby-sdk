=begin
#Voucherify API

#Voucherify promotion engine REST API. Please see https://docs.voucherify.io/docs for more details.

The version of the OpenAPI document: v2018-08-01
Contact: support@voucherify.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module VoucherifySdk
  class MetadataSchemasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Metadata Schema
    # Retrieves a metadata schema per resource type. # Resource types ## Standard You can retrieve metadata schemas for the standard metadata schema definitions listed below. Add one of these types as the resource path parameter. - campaign - customer - earning_rule - loyalty_tier - order - order_item - product - promotion_tier - publication - redemption - reward - voucher ## Custom If you have defined a [custom metadata schema](https://support.voucherify.io/article/99-schema-validation-metadata#add-metadata), provide its name in the resource field to retrieve its details. 📘 Management API If you have Management API enabled, you can also use the Get Metadata Schemas endpoint to retrieve a metadata schema using its ID.
    # @param resource [String] There is an infinite number of possibilities for retrieving metadata schemas by the resource type because you can define custom metadata schemas.
    # @param [Hash] opts the optional parameters
    # @return [MetadataSchemasGetResponseBody]
    def get_metadata_schema(resource, opts = {})
      data, _status_code, _headers = get_metadata_schema_with_http_info(resource, opts)
      data
    end

    # Get Metadata Schema
    # Retrieves a metadata schema per resource type. # Resource types ## Standard You can retrieve metadata schemas for the standard metadata schema definitions listed below. Add one of these types as the resource path parameter. - campaign - customer - earning_rule - loyalty_tier - order - order_item - product - promotion_tier - publication - redemption - reward - voucher ## Custom If you have defined a [custom metadata schema](https://support.voucherify.io/article/99-schema-validation-metadata#add-metadata), provide its name in the resource field to retrieve its details. 📘 Management API If you have Management API enabled, you can also use the Get Metadata Schemas endpoint to retrieve a metadata schema using its ID.
    # @param resource [String] There is an infinite number of possibilities for retrieving metadata schemas by the resource type because you can define custom metadata schemas.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataSchemasGetResponseBody, Integer, Hash)>] MetadataSchemasGetResponseBody data, response status code and response headers
    private def get_metadata_schema_with_http_info(resource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataSchemasApi.get_metadata_schema ...'
      end
      # resource path
      local_var_path = '/v1/metadata-schemas/{resource}'.sub('{' + 'resource' + '}', CGI.escape(resource.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataSchemasGetResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"MetadataSchemasApi.get_metadata_schema",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataSchemasApi#get_metadata_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Metadata Schemas
    # Retrieve metadata schema definitions. 📘 Management API If you have Management API enabled, you can also use the List Metadata Schemas endpoint to list all metadata schemas.
    # @param [Hash] opts the optional parameters
    # @return [MetadataSchemasListResponseBody]
    def list_metadata_schemas(opts = {})
      data, _status_code, _headers = list_metadata_schemas_with_http_info(opts)
      data
    end

    # List Metadata Schemas
    # Retrieve metadata schema definitions. 📘 Management API If you have Management API enabled, you can also use the List Metadata Schemas endpoint to list all metadata schemas.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataSchemasListResponseBody, Integer, Hash)>] MetadataSchemasListResponseBody data, response status code and response headers
    private def list_metadata_schemas_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataSchemasApi.list_metadata_schemas ...'
      end
      # resource path
      local_var_path = '/v1/metadata-schemas'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetadataSchemasListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"MetadataSchemasApi.list_metadata_schemas",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataSchemasApi#list_metadata_schemas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end