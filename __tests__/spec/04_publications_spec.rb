require_relative '../lib/config.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Publications API', :order => :defined do
  before(:each) do
    @publications_api_instance = Config.publications_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'create a publication', :order => :first do
    publication = @publications_api_instance.create_publication({
        join_once: true,
        publications_create_request_body: VoucherifySdk::PublicationsCreateRequestBody.new({
          customer: VoucherifySdk::Customer.new({
            id: @voucherify_data.get_customer().id
          }),
          campaign: VoucherifySdk::CreatePublicationCampaign.new({
              name: @voucherify_data.get_discount_campaign().name
            })
          })
      })

    snapshot_name = 'publications/created_publication'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(publication).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, publication)).to be true
  end
end
