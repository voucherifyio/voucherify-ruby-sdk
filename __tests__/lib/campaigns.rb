require_relative 'utils.rb'
require 'VoucherifySdk'
require 'json'

def create_validation_rule_applicable_to(validation_rules_api_instance, product_id)
    begin
        created_validation_rule = validation_rules_api_instance.create_validation_rules({
            validation_rules_create_request_body: VoucherifySdk::ValidationRulesCreateRequestBody.new({
                name: generate_random_string(),
                applicable_to: VoucherifySdk::ValidationRulesCreateRequestBodyApplicableTo.new({
                    included: [VoucherifySdk::ApplicableTo.new({
                        object: "product",
                        id: product_id
                    })]
                }),
                type:"basic",
            })
        })

        return created_validation_rule
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def create_validation_rule_more_than(validation_rules_api_instance, product_id)
    begin
        created_validation_rule = validation_rules_api_instance.create_validation_rules({
            validation_rules_create_request_body: VoucherifySdk::ValidationRulesCreateRequestBody.new({
                name: generate_random_string(),
                rules: {
                    "1": {
                        name: "order.amount",
                        conditions: {
                            "$more_than": [500000]
                        },
                        rules: {}
                    }
                },
                type:"basic",
            })
        })

        return created_validation_rule
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def create_discount_campaign(campaigns_api_instance, validation_rule_id)
    begin
        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: VoucherifySdk::CampaignsCreateRequestBody.new({
                campaign_type: "DISCOUNT_COUPONS",
                name: generate_random_string(),
                type: "AUTO_UPDATE",
                voucher: VoucherifySdk::CampaignsCreateRequestBodyVoucher.new({
                    type: 'DISCOUNT_VOUCHER',
                    discount: VoucherifySdk::Discount.new({
                        type: 'AMOUNT',
                        amount_off: 1000
                    })
                }),
                validation_rules: [validation_rule_id]
            })
        })
        
        return campaign
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def create_promotion_campaign(campaigns_api_instance)
    begin

        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: {
                campaign_type: "PROMOTION",
                name: generate_random_string(),
                promotion: {
                tiers: [
                    {
                        name: generate_random_string(),
                        banner: generate_random_string(),
                        action: {
                            discount: {
                                type: "AMOUNT",
                                amount_off: 1000
                            }
                        }
                    }
                ]}
            }
        })

        return campaign
    end
end

def create_loyalty_campaign(campaigns_api_instance)
    begin
        campaign = campaigns_api_instance.create_campaign({
            campaigns_create_request_body: {
                campaign_type: "LOYALTY_PROGRAM",
                name: generate_random_string(),
                voucher: {
                    type: "LOYALTY_CARD",
                    loyalty_card: {
                        points: 1000,
                    }
                }
            }
        })
        return campaign
    end
end

def delete_campaign(campaigns_api_instance, campaign_id)
    begin
        result = campaigns_api_instance.delete_campaign(campaign_id)

        return result
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def add_vouchers_to_campaign(campaigns_api_instance, campaign_id, voucher_count)
    begin
      vouchers = []
  
      voucher_count.times do
        voucher = campaigns_api_instance.add_vouchers_to_campaign(
          campaign_id,
          {
            vouchers_count: 1
          }
        )
        vouchers << voucher.code
      end
  
      return vouchers
    rescue VoucherifySdk::ApiError => e
      return nil
    end
  end

