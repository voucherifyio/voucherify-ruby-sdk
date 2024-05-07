require_relative '../lib/config.rb'

RSpec.describe 'Publications API', :order => :defined do
  before(:each) do
    @publications_api_instance = Config.publications_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'create a publication', :order => :first do
    publication = @publications_api_instance.create_publication({
        join_once: true,
        publications_create_request_body: VoucherifySdk::CreatePublicationWithCampaign.new({
          customer: VoucherifySdk::Customer.new({
            id: @voucherify_data.get_customer().id
          }),
          campaign: VoucherifySdk::CreatePublicationCampaign.new({
              name: @voucherify_data.get_discount_campaign().name
            })
          })
      })
    expect(publication).not_to be_nil
  end
end
