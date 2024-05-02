require_relative 'utils.rb'
require 'VoucherifySdk'

def create_event(events_api_instance)
  begin
    events_create_request_body = VoucherifySdk::EventsCreateRequestBody.new({
        event: 'test-event',
        customer: VoucherifySdk::Customer.new({
            source_id: 'test-customer'
        }),
        metadata: nil,
        referral: nil,
        loyalty: nil
    })

    created_event = events_api_instance.track_custom_event({
        events_create_request_body: events_create_request_body
    })

    return created_event
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end