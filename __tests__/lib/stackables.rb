def create_request_body_redeemable(voucher_id)
  begin
    validations_validate_request_body_redeemables = [
      VoucherifySdk::RedeemVoucher.new({
          object: "voucher", id: voucher_id
      })
    ]
    return validations_validate_request_body_redeemables
  end
end


def validate_stacked_discounts(validations_api_instance, voucher_id, product_id, customer, amount)
  begin
    result = validations_api_instance.validate_stacked_discounts({
      validations_validate_request_body: VoucherifySdk::ValidationsValidateRequestBody.new({
        redeemables: create_request_body_redeemable(voucher_id),
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
    puts(e)
    return nil;
  end
end

def redeem_stacked_discounts(redemptions_api_instance, voucher_id)
  begin
    result = redemptions_api_instance.redeem_stacked_discounts({
      redemptions_redeem_request_body: VoucherifySdk::RedemptionsRedeemRequestBody.new({
        redeemables: create_request_body_redeemable(voucher_id),
        order: VoucherifySdk::Order.new(amount: 20000)
      })
    })
    return result;
  rescue VoucherifySdk::ApiError => e
    return nil;
  end
end
