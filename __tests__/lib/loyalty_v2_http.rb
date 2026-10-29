# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'

# Authenticated HTTP helper for Loyalty v2 paths that are not published in the
# Ruby SDK. Runtime member flows should use LV2*Api.
# Credentials come from ENV (Config loads dotenv in the RSpec suite).
module LoyaltyV2Http
  class Error < StandardError
    attr_reader :status, :body

    def initialize(message, status:, body: nil)
      super(message)
      @status = status
      @body = body
    end
  end

  module_function

  def base_url
    (ENV['VOUCHERIFY_HOST'] || 'https://api.voucherify.io')
      .to_s
      .strip
      .sub(%r{/+\z}, '')
      .sub(%r{/v1\z}i, '')
  end

  def auth_headers
    app_id = ENV['X_APP_ID']
    app_token = ENV['X_APP_TOKEN']
    if app_id.to_s.empty? || app_token.to_s.empty?
      raise 'X-App-Id and X-App-Token are required for Loyalty v2 HTTP calls.'
    end

    {
      'X-App-Id' => app_id,
      'X-App-Token' => app_token,
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
  end

  def build_uri(path, query = nil)
    absolute = path.start_with?('http') ? path : "#{base_url}#{path.start_with?('/') ? path : "/#{path}"}"
    uri = URI(absolute)
    if query.is_a?(Hash) && !query.empty?
      params = []
      query.each do |key, value|
        next if value.nil?

        if value.is_a?(Array)
          value.each { |item| params << [key.to_s, item.to_s] }
        else
          params << [key.to_s, value.to_s]
        end
      end
      uri.query = URI.encode_www_form(params) unless params.empty?
    end
    uri
  end

  # CI app keys allow 100 calls per hour. Setup needs headroom after the rest of the suite.
  def rate_limit_remaining
    uri = URI("#{base_url}/v1/products?limit=1")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'
    req = Net::HTTP::Get.new(uri)
    auth_headers.each { |key, value| req[key] = value }
    response = http.request(req)
    response['x-rate-limit-remaining'].to_i
  end

  def request(method, path, body = nil, query = nil)
    uri = build_uri(path, query)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'

    verb = method.to_s.upcase
    req_class = {
      'GET' => Net::HTTP::Get,
      'POST' => Net::HTTP::Post,
      'PUT' => Net::HTTP::Put,
      'DELETE' => Net::HTTP::Delete,
      'PATCH' => Net::HTTP::Patch
    }.fetch(verb) { raise ArgumentError, "Unsupported HTTP method: #{verb}" }

    req = req_class.new(uri)
    auth_headers.each { |key, value| req[key] = value }
    req.body = JSON.generate(body) unless body.nil?

    response = http.request(req)
    text = response.body.to_s
    data =
      if text.empty?
        nil
      else
        begin
          JSON.parse(text)
        rescue JSON::ParserError
          text
        end
      end

    code = response.code.to_i
    unless (200..299).cover?(code)
      excerpt =
        if data.is_a?(String)
          data[0, 500]
        else
          JSON.generate(data)[0, 500]
        end
      raise Error.new(
        "Loyalty v2 HTTP #{verb} #{path} failed: #{code} #{excerpt}",
        status: code,
        body: data
      )
    end

    data
  end

  def create_program(body)
    request('POST', '/v2/loyalties/programs', body)
  end

  def get_program(program_id)
    request('GET', "/v2/loyalties/programs/#{program_id}")
  end

  def update_program(program_id, body)
    request('PUT', "/v2/loyalties/programs/#{program_id}", body)
  end

  def activate_program(program_id)
    request('POST', "/v2/loyalties/programs/#{program_id}/activate")
  end

  def deactivate_program(program_id)
    request('POST', "/v2/loyalties/programs/#{program_id}/deactivate")
  end

  def delete_program(program_id)
    request('DELETE', "/v2/loyalties/programs/#{program_id}")
  end

  def create_card_definition(body)
    request('POST', '/v2/loyalties/card-definitions', body)
  end

  def activate_card_definition(card_definition_id)
    request('POST', "/v2/loyalties/card-definitions/#{card_definition_id}/activate")
  end

  # Card definitions have no deactivate path; draft returns them to editable state.
  def draft_card_definition(card_definition_id)
    request('POST', "/v2/loyalties/card-definitions/#{card_definition_id}/draft")
  end

  def delete_card_definition(card_definition_id)
    request('DELETE', "/v2/loyalties/card-definitions/#{card_definition_id}")
  end

  def create_earning_rule(body)
    request('POST', '/v2/loyalties/earning-rules', body)
  end

  def activate_earning_rule(earning_rule_id)
    request('POST', "/v2/loyalties/earning-rules/#{earning_rule_id}/activate")
  end

  def deactivate_earning_rule(earning_rule_id)
    request('POST', "/v2/loyalties/earning-rules/#{earning_rule_id}/deactivate")
  end

  def delete_earning_rule(earning_rule_id)
    request('DELETE', "/v2/loyalties/earning-rules/#{earning_rule_id}")
  end

  def create_reward(body)
    request('POST', '/v2/loyalties/rewards', body)
  end

  def activate_reward(reward_id)
    request('POST', "/v2/loyalties/rewards/#{reward_id}/activate")
  end

  def deactivate_reward(reward_id)
    request('POST', "/v2/loyalties/rewards/#{reward_id}/deactivate")
  end

  def delete_reward(reward_id)
    request('DELETE', "/v2/loyalties/rewards/#{reward_id}")
  end

  def batch_assign_card_definitions(program_id, body)
    request('POST', "/v2/loyalties/programs/#{program_id}/card-definitions/batch", body)
  end

  def batch_assign_earning_rules(program_id, body)
    request('POST', "/v2/loyalties/programs/#{program_id}/earning-rules/batch", body)
  end

  def batch_assign_rewards(program_id, body)
    request('POST', "/v2/loyalties/programs/#{program_id}/rewards/batch", body)
  end
end
