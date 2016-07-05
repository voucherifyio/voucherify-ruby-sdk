require 'voucherify/utils'

include Utils

discount = Utils.calculate_discount(20, {
    discount: {
        unit_off: 2.0,
        type: 'UNIT'
    }
}, 5)

print(discount)

discount = Utils.calculate_price(20, amount_voucher_object = {
    discount: {
        amount_off: 7.0,
        type: 'AMOUNT'
    }
})

print(discount)