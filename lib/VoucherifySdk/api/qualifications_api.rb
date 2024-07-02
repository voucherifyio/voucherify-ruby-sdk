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
  class QualificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check Eligibility
    # <!-- theme: warning --> > 🚧 The Qualifications endpoint ignores the rules checking: >  > - Limit of total redeemed discount amount per campaign > - Limit of total redemptions count per campaign > - Redemptions per customer > - Redemptions per customer in a campaign   Generate a list of redeemables that are applicable in the context of the customer and order.  The new qualifications method is an improved version of [Campaign Qualifications](ref:examine-campaigns-qualification), [Voucher Qualifications](ref:examine-vouchers-qualification), and [Promotions Validation](ref:validate-promotions) API requests. The new qualification method introduces the following improvements:  - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  > 👍 Scenario Guide > > Read [the dedicated guide](doc:checking-eligibility) to learn about some use cases this endpoint can cover.  ## Paging   The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the `starting_after` cursor.  To process of paging the redeemables works in the following manner:  - You send the first API request for Qualifications without the `starting_after` parameter. - The response will contain a parameter named `has_more`. If the parameter's value is set to `true`, then more redeemables are available. - Get the value of the `created_at` parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the `starting_after` parameter set to the value taken from the `created_at` parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the `has_more` parameter is set to `true`, apply steps 3-5 to get the next page of redeemables.
    # @param [Hash] opts the optional parameters
    # @option opts [QualificationsCheckEligibilityRequestBody] :qualifications_check_eligibility_request_body Define order and customer context.
    # @return [QualificationsCheckEligibilityResponseBody]
    def check_eligibility(opts = {})
      data, _status_code, _headers = check_eligibility_with_http_info(opts)
      data
    end

    # Check Eligibility
    # &lt;!-- theme: warning --&gt; &gt; 🚧 The Qualifications endpoint ignores the rules checking: &gt;  &gt; - Limit of total redeemed discount amount per campaign &gt; - Limit of total redemptions count per campaign &gt; - Redemptions per customer &gt; - Redemptions per customer in a campaign   Generate a list of redeemables that are applicable in the context of the customer and order.  The new qualifications method is an improved version of [Campaign Qualifications](ref:examine-campaigns-qualification), [Voucher Qualifications](ref:examine-vouchers-qualification), and [Promotions Validation](ref:validate-promotions) API requests. The new qualification method introduces the following improvements:  - Qualification results are returned faster - No limit on the number of returned redeemables - Introduces new qualification scenarios, not available in the previous version  &gt; 👍 Scenario Guide &gt; &gt; Read [the dedicated guide](doc:checking-eligibility) to learn about some use cases this endpoint can cover.  ## Paging   The Voucherify Qualifications API request will return to you all of the redeemables available for the customer in batches of up to 50 redeemables. To get the next batch of redeemables, you need to use the &#x60;starting_after&#x60; cursor.  To process of paging the redeemables works in the following manner:  - You send the first API request for Qualifications without the &#x60;starting_after&#x60; parameter. - The response will contain a parameter named &#x60;has_more&#x60;. If the parameter&#39;s value is set to &#x60;true&#x60;, then more redeemables are available. - Get the value of the &#x60;created_at&#x60; parameter of the last returned redeemable. The value of this parameter will be used as a cursor to retrieve the next page of redeemables. - Send another API request for Qualification with the &#x60;starting_after&#x60; parameter set to the value taken from the &#x60;created_at&#x60; parameter from the last returned redeemable. - Voucherify will return the next page of redeemables. - If the &#x60;has_more&#x60; parameter is set to &#x60;true&#x60;, apply steps 3-5 to get the next page of redeemables.
    # @param [Hash] opts the optional parameters
    # @option opts [QualificationsCheckEligibilityRequestBody] :qualifications_check_eligibility_request_body Define order and customer context.
    # @return [Array<(QualificationsCheckEligibilityResponseBody, Integer, Hash)>] QualificationsCheckEligibilityResponseBody data, response status code and response headers
    def check_eligibility_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QualificationsApi.check_eligibility ...'
      end
      # resource path
      local_var_path = '/v1/qualifications'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'qualifications_check_eligibility_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'QualificationsCheckEligibilityResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['X-App-Id', 'X-App-Token']

      new_options = opts.merge(
        :operation => :"QualificationsApi.check_eligibility",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QualificationsApi#check_eligibility\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
