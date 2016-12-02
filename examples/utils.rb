require '../lib/voucherify/utils'

include Utils

base_price = 20.00

puts "base price: " + base_price.to_s

puts "===== amount discount ====="
amount_voucher = {
    discount: {
        amount_off: 1000, # 10.0
        type: 'AMOUNT'
    }
}
puts "discount:             " + Utils.calculate_discount(base_price, amount_voucher).to_s
puts "price after discount: " + Utils.calculate_price(base_price, amount_voucher).to_s
puts


puts "===== percent discount ===="

percent_discount_voucher = {
    discount: {
        percent_off: 20,
        type: 'PERCENT'
    }
}

puts "discount:             " + Utils.calculate_discount(base_price, percent_discount_voucher).to_s
puts "price after discount: " + Utils.calculate_price(base_price, percent_discount_voucher).to_s
puts


puts "===== unit discount ======="

unit_discount_voucher = {
    discount: {
        unit_off: 2,
        type: 'UNIT'
    }
}

puts "discount:             " + Utils.calculate_discount(base_price, unit_discount_voucher, 5).to_s
puts "price after discount: " + Utils.calculate_price(base_price, unit_discount_voucher, 5).to_s
puts


puts "===== gift voucher ========"

gift_voucher = {
    gift: {
        amount: 1000,
        balance: 500
    }
}

puts "discount:             " + Utils.calculate_discount(base_price, gift_voucher).to_s
puts "price after discount: " + Utils.calculate_price(base_price, gift_voucher).to_s
puts

puts "===== gift voucher 2 ======"

gift_voucher2 = {
    gift: {
        amount: 10000,
        balance: 5000
    }
}

puts "discount:             " + Utils.calculate_discount(base_price, gift_voucher2).to_s
puts "price after discount: " + Utils.calculate_price(base_price, gift_voucher2).to_s
puts