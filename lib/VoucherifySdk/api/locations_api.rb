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
  class LocationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Location
    # Returns a location object.
    # @param location_id [String] The unique location ID.
    # @param [Hash] opts the optional parameters
    # @return [LocationsGetResponseBody]
    def get_location(location_id, opts = {})
      data, _status_code, _headers = get_location_with_http_info(location_id, opts)
      data
    end

    # Get Location
    # Returns a location object.
    # @param location_id [String] The unique location ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocationsGetResponseBody, Integer, Hash)>] LocationsGetResponseBody data, response status code and response headers
    private def get_location_with_http_info(location_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationsApi.get_location ...'
      end
      # resource path
      local_var_path = '/v1/locations/{locationId}'.sub('{' + 'locationId' + '}', CGI.escape(location_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LocationsGetResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"LocationsApi.get_location",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#get_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Locations
    # Returns a list of your locations.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
    # @option opts [ParameterOrderListLocations] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [ParameterFiltersListLocations] :filters Filter the locations using one of the available filters.
    # @option opts [Time] :end_date A filter on the list based on the end date. This will filter out all locations whose end date falls before the specified date and time. A date value must be presented in the ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16).
    # @return [LocationsListResponseBody]
    def list_locations(opts = {})
      data, _status_code, _headers = list_locations_with_http_info(opts)
      data
    end

    # List Locations
    # Returns a list of your locations.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
    # @option opts [ParameterOrderListLocations] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [ParameterFiltersListLocations] :filters Filter the locations using one of the available filters.
    # @option opts [Time] :end_date A filter on the list based on the end date. This will filter out all locations whose end date falls before the specified date and time. A date value must be presented in the ISO 8601 format (2016-11-16T14:14:31Z or 2016-11-16).
    # @return [Array<(LocationsListResponseBody, Integer, Hash)>] LocationsListResponseBody data, response status code and response headers
    private def list_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocationsApi.list_locations ...'
      end
      # resource path
      local_var_path = '/v1/locations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'filters'] = opts[:'filters'] if !opts[:'filters'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LocationsListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"LocationsApi.list_locations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#list_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end