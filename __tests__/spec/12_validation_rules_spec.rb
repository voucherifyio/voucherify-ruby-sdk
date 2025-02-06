require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require 'VoucherifySdk'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Validation Rules API', :order => :defined do
  before(:each) do
    @validation_rules_api_instance = Config.validation_rules_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  it 'create validation rule', :order => :first do
    voucher = @voucherify_data.get_voucher()
    validation_rule = @voucherify_data.get_validation_rule()

    validationRulesAssignmentsCreateRequestBody = VoucherifySdk::ValidationRulesAssignmentsCreateRequestBody.new({
      related_object_type: "voucher",
      related_object_id: voucher.code
    })
    # TODO
  end

end
