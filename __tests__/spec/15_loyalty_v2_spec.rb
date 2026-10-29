# frozen_string_literal: true

require 'dotenv'

dotenv_path = File.expand_path('../../.env', __dir__)
Dotenv.load(dotenv_path)

require_relative '../lib/loyalty_v2_fixture'

RSpec.describe 'Loyalty v2 API', order: :defined do
  def credentials_configured?
    !ENV['X_APP_ID'].to_s.empty? && !ENV['X_APP_TOKEN'].to_s.empty?
  end

  it 'sets up a Loyalty v2 program over HTTP and tears it down', order: :first do
    skip 'X_APP_ID and X_APP_TOKEN are required' unless credentials_configured?

    ctx = nil
    begin
      ctx = LoyaltyV2Fixture.setup
      expect(ctx.program_id).not_to be_nil
      expect(ctx.card_definition_id).not_to be_nil
      expect(ctx.reward_card_definition_id).not_to be_nil
      expect(ctx.earning_rule_id).not_to be_nil
      expect(ctx.reward_id).not_to be_nil
    ensure
      LoyaltyV2Fixture.teardown(ctx)
    end
  end
end
