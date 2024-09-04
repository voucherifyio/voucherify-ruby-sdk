require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'
require_relative '../lib/stackables.rb'
require_relative 'support/snapshot_helper'
require_relative 'support/get_snapshot_without_uniq_keys'
require_relative 'support/validate_deep_match'

RSpec.describe 'Validations API', :order => :defined do
  before(:each) do
    @validations_api_instance = Config.validations_api_instance()
    @voucherify_data = VoucherifyData.instance()
  end

  $validation_result_successful = nil
  $order_amount_successful = 20000

  $validation_result_failed = nil
  $order_amount_failed = 1000

  it 'validate stacked discounts (successful)', :order => :first do
    $validation_result_successful = validate_stacked_discounts(
        @validations_api_instance,
        @voucherify_data.get_voucher().code,
        @voucherify_data.get_product.id,
        @voucherify_data.get_customer(),
        $order_amount_successful
    )

    snapshot_name = 'validations/applicable_stacked_validation'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect($validation_result_successful).not_to be_nil
    expect(validate_deep_match(filtered_snapshot, $validation_result_successful)).to be true
  end

  it 'validates presence of the redeemables array (successful)', :order => :second do
      expect($validation_result_successful.redeemables).not_to be_nil
      expect($validation_result_successful.redeemables).to be_an(Array)
  end

  it 'checks if redeemables items have necessary keys (successful)', :order => :third do
    redeemable = $validation_result_successful.redeemables.first

    snapshot_name = 'validations/redeemable_items_necessary_keys'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(redeemable.status).to eq("APPLICABLE")
    expect(redeemable.id).not_to be_nil
    expect(redeemable.object).to eq("voucher")
    expect(redeemable.order).to be_a(VoucherifySdk::OrderCalculated)
    expect(redeemable.applicable_to).to be_a(VoucherifySdk::ApplicableToResultList)
    expect(redeemable.inapplicable_to).to be_a(VoucherifySdk::InapplicableToResultList)
    expect(redeemable.result).to be_a(VoucherifySdk::ValidationsValidateResponseBodyRedeemablesItemResult)
    expect(validate_deep_match(filtered_snapshot, redeemable)).to be true
  end

  it 'validates the order object structure (successful)', :order => :fourth do
    order = $validation_result_successful.order

    snapshot_name = 'validations/validations_succesful_order'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect(order).not_to be_nil
    expect(order.amount).to eq($order_amount_successful)
    expect(order.total_amount).to eq($order_amount_successful - @voucherify_data.get_discount_campaign().voucher.discount.amount_off)
    expect(validate_deep_match(filtered_snapshot, order)).to be true
  end

  it 'validates details of the discount in the first redeemable (successful)', :order => :fifth do
    discount = $validation_result_successful.redeemables.first.result.discount

    expect(discount.type).to eq("AMOUNT")
    expect(discount.amount_off).to eq(@voucherify_data.get_discount_campaign().voucher.discount.amount_off)
  end

  it 'checks is redeemables applicable_to points on product (successful)', :order => :sixth do
    redeemable = $validation_result_successful.redeemables.first
    applicable_to = redeemable.applicable_to

    expect(applicable_to.data).not_to be_nil
    expect(applicable_to.data).to be_a(Array)

    applicable_to_first = applicable_to.data.first
    expect(applicable_to_first).not_to be_nil
    expect(applicable_to_first.object).to eq("product")
    expect(applicable_to_first.id).to eq(@voucherify_data.get_product().id)
  end

  it 'checks validation customer response is valid (successful)', :order => :seventh do
    expect($validation_result_successful.tracking_id).to_not be_nil
    expect($validation_result_successful.order.customer).to_not be_nil
    expect($validation_result_successful.order.customer).to be_a(VoucherifySdk::CustomerId)
    expect($validation_result_successful.order.customer.id).to eq(@voucherify_data.get_customer().id)
    expect($validation_result_successful.order.customer.object).to eq("customer")
  end

  it 'validate stacked discounts (failed)', :order => :eighth do
    $validation_result_failed = validate_stacked_discounts(
      @validations_api_instance,
      @voucherify_data.get_voucher_with_more_than_validation_rule().code,
      @voucherify_data.get_product.id,
      @voucherify_data.get_customer(),
      $order_amount_failed
    )

    snapshot_name = 'validations/inapplicable_stacked_validation'
    filtered_snapshot = get_snapshot_without_uniq_keys(snapshot_name)

    expect($validation_result_failed).not_to be_nil
    expect($validation_result_failed.valid).to be(false)
    expect(validate_deep_match(filtered_snapshot, $validation_result_failed)).to be true
  end

  it 'validates presence of the redeemables and inapplicable_redeemables (failed)', :order => :ninth do
      expect($validation_result_failed.redeemables).not_to be_nil
      expect($validation_result_failed.redeemables).to be_an(Array)

      expect($validation_result_failed.inapplicable_redeemables).not_to be_nil
      expect($validation_result_failed.inapplicable_redeemables).to be_an(Array)
  end

  it 'checks if redeemables items have necessary keys (failed)', :order => :tenth do
    inapplicable_redeemables = $validation_result_failed.inapplicable_redeemables.first

    expect(inapplicable_redeemables.status).to eq("INAPPLICABLE")
    expect(inapplicable_redeemables.id).to eq(@voucherify_data.get_voucher_with_more_than_validation_rule().code)
    expect(inapplicable_redeemables.object).to eq("voucher")

    expect(inapplicable_redeemables.result).not_to be_nil
    expect(inapplicable_redeemables.result).to be_a(VoucherifySdk::ValidationsRedeemableInapplicableResult)

    expect(inapplicable_redeemables.result.error).not_to be_nil
    expect(inapplicable_redeemables.result.error).to be_an(VoucherifySdk::Error)
  end

  it 'checks validation customer response is valid (failed)', :order => :eleventh do
    expect($validation_result_failed.tracking_id).to_not be_nil
  end

end
