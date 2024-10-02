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
  class PublicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Publication
    # This method selects vouchers that are suitable for publication, adds a publish entry and returns the publication. A voucher is suitable for publication when its active and hasnt been published yet.    🚧 Clearly define the source of the voucher  You must clearly define which source you want to publish the voucher code from. It can either be a code from a campaign or a specific voucher identified by a code.    🚧 Publish multiple vouchers  In case you want to publish multiple vouchers within a single publication, you need to specify the campaign name and number of vouchers you want to publish.    📘 Auto-update campaign  In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use an **auto-update** campaign.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :join_once Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer.
    # @option opts [PublicationsCreateRequestBody] :publications_create_request_body Specify the publication parameters.
    # @return [PublicationsCreateResponseBody]
    def create_publication(opts = {})
      data, _status_code, _headers = create_publication_with_http_info(opts)
      data
    end

    # Create Publication
    # This method selects vouchers that are suitable for publication, adds a publish entry and returns the publication. A voucher is suitable for publication when its active and hasnt been published yet.    🚧 Clearly define the source of the voucher  You must clearly define which source you want to publish the voucher code from. It can either be a code from a campaign or a specific voucher identified by a code.    🚧 Publish multiple vouchers  In case you want to publish multiple vouchers within a single publication, you need to specify the campaign name and number of vouchers you want to publish.    📘 Auto-update campaign  In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use an **auto-update** campaign.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :join_once Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer.
    # @option opts [PublicationsCreateRequestBody] :publications_create_request_body Specify the publication parameters.
    # @return [Array<(PublicationsCreateResponseBody, Integer, Hash)>] PublicationsCreateResponseBody data, response status code and response headers
    private def create_publication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsApi.create_publication ...'
      end
      # resource path
      local_var_path = '/v1/publications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'join_once'] = opts[:'join_once'] if !opts[:'join_once'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'publications_create_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'PublicationsCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"PublicationsApi.create_publication",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsApi#create_publication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Publication
    # This method selects vouchers that are suitable for publication, adds a publish entry and returns the publication. A voucher is suitable for publication when its active and hasnt been published yet.  ❗️ Limited access  Access to this endpoint is limited. This endpoint is designed for specific integrations and the API keys need to be configured to access this endpoint. Navigate to the **Dashboard** &rarr; **Project Settings** &rarr; **General** &rarr; **Integration Keys** to set up a pair of API keys and use them to send the request.    🚧 Clearly define the source of the voucher  You must clearly define which source you want to publish the voucher code from. It can either be a code from a campaign or a specific voucher identified by a code.    🚧 Publish multiple vouchers  This endpoint does not support the publishing of multiple vouchers from a single campaign. In case you want to publish multiple vouchers within a single publication, you need to use a dedicated endpoint.    📘 Auto-update campaign  In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use an **auto-update** campaign.   # Example Request      ❗️ Required    Query param voucher OR campaign MUST be filled out. If you provide both, campaign param will be skipped.
    # @param customer [Customer] Contains information about the customer to whom the publication was directed.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :join_once Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer.
    # @option opts [String] :voucher Code of voucher being published.
    # @option opts [CreatePublicationCampaign] :campaign Create publication with campaign.
    # @option opts [String] :source_id The merchants publication ID if it is different from the Voucherify publication ID. Its an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service. If source_id is provided only 1 voucher can be published per request.
    # @option opts [Object] :metadata The metadata object stores all custom attributes assigned to the publication. A set of key/value pairs that you can attach to a publication object. It can be useful for storing additional information about the publication in a structured format.
    # @return [PublicationsCreateResponseBody]
    def create_publication1(customer, opts = {})
      data, _status_code, _headers = create_publication1_with_http_info(customer, opts)
      data
    end

    # Create Publication
    # This method selects vouchers that are suitable for publication, adds a publish entry and returns the publication. A voucher is suitable for publication when its active and hasnt been published yet.  ❗️ Limited access  Access to this endpoint is limited. This endpoint is designed for specific integrations and the API keys need to be configured to access this endpoint. Navigate to the **Dashboard** &amp;rarr; **Project Settings** &amp;rarr; **General** &amp;rarr; **Integration Keys** to set up a pair of API keys and use them to send the request.    🚧 Clearly define the source of the voucher  You must clearly define which source you want to publish the voucher code from. It can either be a code from a campaign or a specific voucher identified by a code.    🚧 Publish multiple vouchers  This endpoint does not support the publishing of multiple vouchers from a single campaign. In case you want to publish multiple vouchers within a single publication, you need to use a dedicated endpoint.    📘 Auto-update campaign  In case you want to ensure the number of publishable codes increases automatically with the number of customers, you should use an **auto-update** campaign.   # Example Request      ❗️ Required    Query param voucher OR campaign MUST be filled out. If you provide both, campaign param will be skipped.
    # @param customer [Customer] Contains information about the customer to whom the publication was directed.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :join_once Through this flag, you can control if a particular person gets only one and always the same code even if the app sends multiple publication requests. It means that if you have a referral program, a referrer is assigned only to one code if an integration sends publication requests more than once for the same customer.
    # @option opts [String] :voucher Code of voucher being published.
    # @option opts [CreatePublicationCampaign] :campaign Create publication with campaign.
    # @option opts [String] :source_id The merchants publication ID if it is different from the Voucherify publication ID. Its an optional tracking identifier of a publication. It is really useful in case of an integration between multiple systems. It can be a publication ID from a CRM system, database or 3rd-party service. If source_id is provided only 1 voucher can be published per request.
    # @option opts [Object] :metadata The metadata object stores all custom attributes assigned to the publication. A set of key/value pairs that you can attach to a publication object. It can be useful for storing additional information about the publication in a structured format.
    # @return [Array<(PublicationsCreateResponseBody, Integer, Hash)>] PublicationsCreateResponseBody data, response status code and response headers
    private def create_publication1_with_http_info(customer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsApi.create_publication1 ...'
      end
      # resource path
      local_var_path = '/v1/publications/create'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'customer'] = customer
      query_params[:'join_once'] = opts[:'join_once'] if !opts[:'join_once'].nil?
      query_params[:'voucher'] = opts[:'voucher'] if !opts[:'voucher'].nil?
      query_params[:'campaign'] = opts[:'campaign'] if !opts[:'campaign'].nil?
      query_params[:'source_id'] = opts[:'source_id'] if !opts[:'source_id'].nil?
      query_params[:'metadata'] = opts[:'metadata'] if !opts[:'metadata'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PublicationsCreateResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"PublicationsApi.create_publication1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsApi#create_publication1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Publications
    # Retrieve a list of publications. To return a **particular** publication, you can use the source_id query parameter and provide the source_id of the publication you are looking for specifically. # Pagination  🚧 Important!  If you want to scroll through a huge set of records, it is recommended to use the Exports API. This API will return an error page_over_limit if you reach a page above 1000. # Filter Query The filters query parameter allows for joining multiple parameters with logical operators. The syntax looks as follows:  ## Operators:  ## Examples  
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
    # @option opts [Integer] :page Which page of results to return. The lowest value is 1.
    # @option opts [ParameterOrderListPublications] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [String] :campaign Filters by a given campaign name.
    # @option opts [String] :customer Filters by a unique customer ID.
    # @option opts [String] :voucher Filters by a given voucher code.
    # @option opts [ParameterResultListPublications] :result Filters by a publication result.
    # @option opts [ParameterVoucherTypeListPublications] :voucher_type Filters by a voucher type.
    # @option opts [Boolean] :is_referral_code This filter works only for the true option. If set to true, the query returns only publications of codes from referral campaigns. 
    # @option opts [ParameterFiltersListPublications] :filters Filters for listing publications.
    # @option opts [String] :source_id Using this endpoint with a particular publication source_id, which was sent with the original request to create a publication, returns in the response, exactly the same code published initially because the code was assigned to the given publication. As a result, you can use this endpoint as a reference and return a code that was assigned in a publication by using a particular source_id.
    # @return [PublicationsListResponseBody]
    def list_publications(opts = {})
      data, _status_code, _headers = list_publications_with_http_info(opts)
      data
    end

    # List Publications
    # Retrieve a list of publications. To return a **particular** publication, you can use the source_id query parameter and provide the source_id of the publication you are looking for specifically. # Pagination  🚧 Important!  If you want to scroll through a huge set of records, it is recommended to use the Exports API. This API will return an error page_over_limit if you reach a page above 1000. # Filter Query The filters query parameter allows for joining multiple parameters with logical operators. The syntax looks as follows:  ## Operators:  ## Examples  
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limits the number of objects to be returned. The limit can range between 1 and 100 items. If no limit is set, it returns 10 items.
    # @option opts [Integer] :page Which page of results to return. The lowest value is 1.
    # @option opts [ParameterOrderListPublications] :order Sorts the results using one of the filtering options, where the dash - preceding a sorting option means sorting in a descending order.
    # @option opts [String] :campaign Filters by a given campaign name.
    # @option opts [String] :customer Filters by a unique customer ID.
    # @option opts [String] :voucher Filters by a given voucher code.
    # @option opts [ParameterResultListPublications] :result Filters by a publication result.
    # @option opts [ParameterVoucherTypeListPublications] :voucher_type Filters by a voucher type.
    # @option opts [Boolean] :is_referral_code This filter works only for the true option. If set to true, the query returns only publications of codes from referral campaigns. 
    # @option opts [ParameterFiltersListPublications] :filters Filters for listing publications.
    # @option opts [String] :source_id Using this endpoint with a particular publication source_id, which was sent with the original request to create a publication, returns in the response, exactly the same code published initially because the code was assigned to the given publication. As a result, you can use this endpoint as a reference and return a code that was assigned in a publication by using a particular source_id.
    # @return [Array<(PublicationsListResponseBody, Integer, Hash)>] PublicationsListResponseBody data, response status code and response headers
    private def list_publications_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicationsApi.list_publications ...'
      end
      # resource path
      local_var_path = '/v1/publications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'campaign'] = opts[:'campaign'] if !opts[:'campaign'].nil?
      query_params[:'customer'] = opts[:'customer'] if !opts[:'customer'].nil?
      query_params[:'voucher'] = opts[:'voucher'] if !opts[:'voucher'].nil?
      query_params[:'result'] = opts[:'result'] if !opts[:'result'].nil?
      query_params[:'voucher_type'] = opts[:'voucher_type'] if !opts[:'voucher_type'].nil?
      query_params[:'is_referral_code'] = opts[:'is_referral_code'] if !opts[:'is_referral_code'].nil?
      query_params[:'filters'] = opts[:'filters'] if !opts[:'filters'].nil?
      query_params[:'source_id'] = opts[:'source_id'] if !opts[:'source_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PublicationsListResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"PublicationsApi.list_publications",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicationsApi#list_publications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
