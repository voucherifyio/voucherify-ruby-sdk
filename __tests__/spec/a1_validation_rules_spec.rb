require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require 'VoucherifySdk'

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

    created_validation_rule_assignment = @validation_rules_api_instance.create_validation_rule_assignment(validation_rule.id, {
        validation_rules_assignments_create_request_body: validationRulesAssignmentsCreateRequestBody
    })

    expect(created_validation_rule_assignment).not_to be_nil
    expect(created_validation_rule_assignment.id).not_to be_nil
    expect(created_validation_rule_assignment.created_at).not_to be_nil
    expect(created_validation_rule_assignment.rule_id).to eq(validation_rule.id)
    expect(created_validation_rule_assignment.related_object_id).to eq(voucher.id)
    expect(created_validation_rule_assignment.related_object_type).to eq("voucher")
    expect(created_validation_rule_assignment.object).to eq("validation_rules_assignment")
  end

end
