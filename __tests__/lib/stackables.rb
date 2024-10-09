def create_request_body_redeemable(voucher_id)
  begin
    validations_validate_request_body_redeemables = [
      VoucherifySdk::RedemptionEntryVoucher.new({
          object: "voucher", id: voucher_id
      })
    ]
    return validations_validate_request_body_redeemables
  end
end


def validate_stacked_discounts(validations_api_instance, voucher_ids, product_id, customer, amount)
  begin
    voucher_ids = [voucher_ids] unless voucher_ids.is_a?(Array)
    redeemables = voucher_ids.map { |voucher_id| create_request_body_redeemable(voucher_id) }.flatten

    result = validations_api_instance.validate_stacked_discounts({
      validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new({
        redeemables: redeemables,
        order: {
          items: [{
            related_object: "product",
            quantity: 1,
            discount_quantity: 1,
            amount: amount,
            price: amount,
            product_id: product_id,
            product: {
              id: product_id
            }
          }],
          amount: amount,
          customer: {
            id: customer.id
          }
        },
        customer: {
          source_id: customer.source_id
        }
      })
    })
    return result;
  rescue VoucherifySdk::ApiError => e
    return nil;
  end
end

def redeem_stacked_discounts(redemptions_api_instance, voucher_ids)
  begin
    voucher_ids = [voucher_ids] unless voucher_ids.is_a?(Array)
    redeemables = voucher_ids.map { |voucher_id| create_request_body_redeemable(voucher_id) }.flatten
    
    result = redemptions_api_instance.redeem_stacked_discounts({
      redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new({
        redeemables: redeemables,
        order: VoucherifySdk::Order.new(amount: 20000)
      })
    })

    return result;
  rescue VoucherifySdk::ApiError => e
    return nil;
  end
end

def list_redemptions(redemptions_api_instance)
  begin
    redemptions = @redemptions_api_instance.list_redemptions({
      filters: VoucherifySdk::ParameterFiltersListRedemptions.new({
        voucher_code: VoucherifySdk::ParameterFiltersListRedemptionsVoucherCode.new({
          conditions: VoucherifySdk::FilterConditionsString.new({
            not_in: ["123"]
          })
        })
      })
    })
    
    expect(redemptions).not_to be_nil
  rescue VoucherifySdk::ApiError => e
   return nil
  end
end
