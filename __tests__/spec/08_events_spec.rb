require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/events.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Events API', :order => :defined do
  before(:each) do
    @events_api_instance = Config.events_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'track custom event', :order => :first do
    created_event = create_event(@events_api_instance)

    snapshot_name = 'events/created_event'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(created_event).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, created_event)).to be true
  end
end
