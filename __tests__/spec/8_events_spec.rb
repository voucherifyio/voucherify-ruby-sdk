require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/events.rb'

RSpec.describe 'Campaigns API', :order => :defined do
  before(:each) do
    @events_api_instance = Config.events_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'track custom event', :order => :first do
    created_event = create_event(@events_api_instance)

    expect(created_event).not_to be_nil
  end
end