require_relative 'utils.rb'
require 'VoucherifySdk'

def update_loyalty_card_balance(loyalties_api_instance, memberId)
  begin
    updated_loyalty_member_card = loyalties_api_instance.update_loyalty_card_balance(memberId, {
      loyalties_members_balance_update_request_body: VoucherifySdk::LoyaltiesMembersBalanceUpdateRequestBody.new({
        points: 2000
      })
    })

    return updated_loyalty_member_card

  rescue VoucherifySdk::ApiError => e
    retun nil
  end
end

def list_loyalty_card_transactions(loyalties_api_instance, memberId)
  begin
    transactions = loyalties_api_instance.list_loyalty_card_transactions(memberId,
    {
      limit: 10,
      page: 1
    })

    return transactions

  rescue VoucherifySdk::ApiError => e
    return nil
  end 
end
