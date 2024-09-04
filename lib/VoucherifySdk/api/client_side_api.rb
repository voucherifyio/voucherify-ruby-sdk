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
  class ClientSideApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check Eligibility (client-side)
    # Generate a list of redeemables that are applicable in the context of the customer and order. The new qualifications method is an improved version of Campaign Qualifications, Voucher Qualifications, and Promotions Validation API requests. The new qualification method introduces the following improvements: - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  👍 Scenario Guide  Read our dedicated guide to learn about some use cases this endpoint can cover here. # Paging  The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the starting_after cursor. To process of paging the redeemables works in the following manner: - You send the first API request for Qualifications without the starting_after parameter. - The response will contain a parameter named has_more. If the parameters value is set to true, then more redeemables are available. - Get the value of the created_at parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the starting_after parameter set to the value taken from the created_at parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the has_more parameter is set to true, apply steps 3-5 to get the next page of redeemables.
    # @param [Hash] opts the optional parameters
    # @option opts [ClientQualificationsCheckEligibilityRequestBody] :client_qualifications_check_eligibility_request_body Define order and customer context.
    # @return [ClientQualificationsCheckEligibilityResponseBody]
    def check_eligibility_client_side(opts = {})
      data, _status_code, _headers = check_eligibility_client_side_with_http_info(opts)
      data
    end

    # Check Eligibility (client-side)
    # Generate a list of redeemables that are applicable in the context of the customer and order. The new qualifications method is an improved version of Campaign Qualifications, Voucher Qualifications, and Promotions Validation API requests. The new qualification method introduces the following improvements: - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  👍 Scenario Guide  Read our dedicated guide to learn about some use cases this endpoint can cover here. # Paging  The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the starting_after cursor. To process of paging the redeemables works in the following manner: - You send the first API request for Qualifications without the starting_after parameter. - The response will contain a parameter named has_more. If the parameters value is set to true, then more redeemables are available. - Get the value of the created_at parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the starting_after parameter set to the value taken from the created_at parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the has_more parameter is set to true, apply steps 3-5 to get the next page of redeemables.
    # @param [Hash] opts the optional parameters
    # @option opts [ClientQualificationsCheckEligibilityRequestBody] :client_qualifications_check_eligibility_request_body Define order and customer context.
    # @return [Array<(ClientQualificationsCheckEligibilityResponseBody, Integer, Hash)>] ClientQualificationsCheckEligibilityResponseBody data, response status code and response headers
    private def check_eligibility_client_side_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideApi.check_eligibility_client_side ...'
      end
      # resource path
      local_var_path = '/client/v1/qualifications'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'client_qualifications_check_eligibility_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ClientQualificationsCheckEligibilityResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Client-Application-Id', 'X-Client-Token']

      new_options = opts.merge(
        :operation => :"ClientSideApi.check_eligibility_client_side",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideApi#check_eligibility_client_side\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Promotion Tiers (client-side)
    # This method enables you to list promotion tiers.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_available This parameter allows filtering promotions that are only available at the moment. When set to true, it selects only non-expired and active promotions.
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return. The lowest value is 1.
    # @option opts [ParameterOrderListPromotionTiersClientSide] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @return [ClientPromotionsTiersListResponseBody]
    def list_promotion_tiers_client_side(origin, opts = {})
      data, _status_code, _headers = list_promotion_tiers_client_side_with_http_info(origin, opts)
      data
    end

    # List Promotion Tiers (client-side)
    # This method enables you to list promotion tiers.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_available This parameter allows filtering promotions that are only available at the moment. When set to true, it selects only non-expired and active promotions.
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items.
    # @option opts [Integer] :page Which page of results to return. The lowest value is 1.
    # @option opts [ParameterOrderListPromotionTiersClientSide] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @return [Array<(ClientPromotionsTiersListResponseBody, Integer, Hash)>] ClientPromotionsTiersListResponseBody data, response status code and response headers
    private def list_promotion_tiers_client_side_with_http_info(origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideApi.list_promotion_tiers_client_side ...'
      end
      # resource path
      local_var_path = '/client/v1/promotions/tiers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_available'] = opts[:'is_available'] if !opts[:'is_available'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'origin'] = origin

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ClientPromotionsTiersListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Client-Application-Id', 'X-Client-Token']

      new_options = opts.merge(
        :operation => :"ClientSideApi.list_promotion_tiers_client_side",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideApi#list_promotion_tiers_client_side\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redeem Stackable Discounts (client-side)
    # This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications. # How API returns calculated discounts and order amounts in the response In the table below, you can see the logic the API follows to calculate discounts and amounts:    📘 Rollbacks  You cant roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your rollback request.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientRedemptionsRedeemRequestBody] :client_redemptions_redeem_request_body 
    # @return [ClientRedemptionsRedeemResponseBody]
    def redeem_stacked_discounts_client_side(origin, opts = {})
      data, _status_code, _headers = redeem_stacked_discounts_client_side_with_http_info(origin, opts)
      data
    end

    # Redeem Stackable Discounts (client-side)
    # This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications. # How API returns calculated discounts and order amounts in the response In the table below, you can see the logic the API follows to calculate discounts and amounts:    📘 Rollbacks  You cant roll back a child redemption. When you call rollback on a stacked redemption, all child redemptions will be rolled back. You need to refer to a parent redemption ID in your rollback request.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientRedemptionsRedeemRequestBody] :client_redemptions_redeem_request_body 
    # @return [Array<(ClientRedemptionsRedeemResponseBody, Integer, Hash)>] ClientRedemptionsRedeemResponseBody data, response status code and response headers
    private def redeem_stacked_discounts_client_side_with_http_info(origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideApi.redeem_stacked_discounts_client_side ...'
      end
      # resource path
      local_var_path = '/client/v1/redemptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'origin'] = origin

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'client_redemptions_redeem_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ClientRedemptionsRedeemResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Client-Application-Id', 'X-Client-Token']

      new_options = opts.merge(
        :operation => :"ClientSideApi.redeem_stacked_discounts_client_side",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideApi#redeem_stacked_discounts_client_side\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Track Custom Event (client-side)
    # To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientEventsCreateRequestBody] :client_events_create_request_body Specify the details of the custom event.
    # @return [ClientEventsCreateResponseBody]
    def track_custom_event_client_side(origin, opts = {})
      data, _status_code, _headers = track_custom_event_client_side_with_http_info(origin, opts)
      data
    end

    # Track Custom Event (client-side)
    # To track a custom event, you create an event object.   The event object must be linked to the customer who performs the action. If a customer doesnt exist in Voucherify, the customer will be created.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientEventsCreateRequestBody] :client_events_create_request_body Specify the details of the custom event.
    # @return [Array<(ClientEventsCreateResponseBody, Integer, Hash)>] ClientEventsCreateResponseBody data, response status code and response headers
    private def track_custom_event_client_side_with_http_info(origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideApi.track_custom_event_client_side ...'
      end
      # resource path
      local_var_path = '/client/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'origin'] = origin

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'client_events_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ClientEventsCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Client-Application-Id', 'X-Client-Token']

      new_options = opts.merge(
        :operation => :"ClientSideApi.track_custom_event_client_side",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideApi#track_custom_event_client_side\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate Stackable Discounts (client-side)
    # Verify redeemables provided in the request. This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientValidationsValidateRequestBody] :client_validations_validate_request_body 
    # @return [ClientValidationsValidateResponseBody]
    def validate_stacked_discounts_client_side(origin, opts = {})
      data, _status_code, _headers = validate_stacked_discounts_client_side_with_http_info(origin, opts)
      data
    end

    # Validate Stackable Discounts (client-side)
    # Verify redeemables provided in the request. This method is accessible through public keys which you can use in client side requests coming from mobile and web browser applications.
    # @param origin [String] Indicates the origin (scheme, hostname, and port).
    # @param [Hash] opts the optional parameters
    # @option opts [ClientValidationsValidateRequestBody] :client_validations_validate_request_body 
    # @return [Array<(ClientValidationsValidateResponseBody, Integer, Hash)>] ClientValidationsValidateResponseBody data, response status code and response headers
    private def validate_stacked_discounts_client_side_with_http_info(origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSideApi.validate_stacked_discounts_client_side ...'
      end
      # resource path
      local_var_path = '/client/v1/validations'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'origin'] = origin

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'client_validations_validate_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ClientValidationsValidateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-Client-Application-Id', 'X-Client-Token']

      new_options = opts.merge(
        :operation => :"ClientSideApi.validate_stacked_discounts_client_side",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSideApi#validate_stacked_discounts_client_side\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
