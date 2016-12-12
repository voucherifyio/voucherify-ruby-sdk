require 'voucherify/utils'

discount = Voucherify::Utils.calculate_discount(20, {
    discount: {
        unit_off: 2.0,
        type: 'UNIT'
    }
}, 5)

puts discount

discount = Voucherify::Utils.calculate_price(20, amount_voucher_object = {
    discount: {
        amount_off: 7.0,
        type: 'AMOUNT'
    }
})

puts discount