require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Qualifications API', :order => :defined do
  before(:each) do
    @qualifications_api_instance = Config.qualifications_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'check eligibility', :order => :first do
    qualifications_result = @qualifications_api_instance.check_eligibility({
        qualifications_check_eligibility_request_body: VoucherifySdk::QualificationsCheckEligibilityRequestBody.new({
            customer: VoucherifySdk::Customer.new({
                id: @voucherify_data.get_customer().id
            }),
            order: VoucherifySdk::Order.new({
                amount: 20000,
            }),
            options: VoucherifySdk::QualificationsOption.new({
                limit: 1,
                filters: VoucherifySdk::QualificationsOptionFilters.new({
                    resource_type: VoucherifySdk::QualificationsOptionFiltersResourceType.new({
                        conditions: VoucherifySdk::QualificationsOptionFiltersResourceTypeConditions.new({
                                _in: ['voucher']
                            })
                        })
                    })
                })
            })
        })


    snapshot_name = 'qualifications/checked_eligibility'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(qualifications_result).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, qualifications_result)).to be true
  end
end
