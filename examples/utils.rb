require 'voucherify/utils'

puts Voucherify::Utils.calculate_discount(20, {
    discount: {
        unit_off: 2.0,
        type: 'UNIT'
    }
}, 5)

puts Voucherify::Utils.calculate_price(20, amount_voucher_object = {
    discount: {
        amount_off: 7.0,
        type: 'AMOUNT'
    }
})
