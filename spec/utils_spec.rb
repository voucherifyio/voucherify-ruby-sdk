require 'voucherify/utils'

include Utils;

describe Utils do
    it 'rounds money' do
        amount = 1234.5678;

        rounded_money = Utils.round_money(amount)

        expect(rounded_money).to eq 1234.57
    end

    it 'validates percent discount' do
        expect{Utils.validate_percent_discount(1000)}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
        expect{Utils.validate_percent_discount(-1)}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
        expect{Utils.validate_percent_discount('string')}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
    end

    it 'validates amount discount' do
        expect{Utils.validate_amount_discount(-1)}.to raise_error("Invalid voucher, amount discount must be bigger than zero.")
        expect{Utils.validate_amount_discount('string')}.to raise_error("Invalid voucher, amount discount must be bigger than zero.")

    end

    it 'validates unit discount' do
        expect{Utils.validate_unit_discount(-1)}.to raise_error("Invalid voucher, unit discount must be bigger than zero.")
        expect{Utils.validate_unit_discount('string')}.to raise_error("Invalid voucher, unit discount must be bigger than zero.")

    end

    it 'calculates price with percent voucher' do
        percent_voucher_object = {
            discount: {
                percent_off: 10.0,
                type: 'PERCENT'
            }
        }

        expect(Utils.calculate_price(20, percent_voucher_object, 0)).to eq 18
    end

    it 'calculates price with amount voucher' do
        amount_voucher_object = {
            discount: {
                amount_off: 10.0,
                type: 'AMOUNT'
            }
        }

        expect(Utils.calculate_price(20, amount_voucher_object, 0)).to eq 10
    end

    it 'calculates price with unit voucher' do
        unit_voucher_object = {
            discount: {
                unit_off: 2.0,
                type: 'UNIT'
            }
        }

        expect(Utils.calculate_price(20, unit_voucher_object, 8)).to eq 4
    end

    it 'calculates price with unknown voucher' do
        void_voucher_object = {
            discount: {
                type: 'VOID'
            }
        }

        expect{Utils.calculate_price(20, void_voucher_object, 8)}.to raise_error("Unsupported discount type")
    end
    
    it 'calculates discount with percent voucher' do
        percent_voucher_object = {
            discount: {
                percent_off: 10.0,
                type: 'PERCENT'
            }
        }

        expect(Utils.calculate_discount(20, percent_voucher_object, 0)).to eq 2
    end

    it 'calculates discount with amount voucher' do
        amount_voucher_object = {
            discount: {
                amount_off: 7.0,
                type: 'AMOUNT'
            }
        }

        expect(Utils.calculate_discount(20, amount_voucher_object, 0)).to eq 7
    end

    it 'calculates discount with unit voucher' do
        unit_voucher_object = {
            discount: {
                unit_off: 2.0,
                type: 'UNIT'
            }
        }

        expect(Utils.calculate_discount(20, unit_voucher_object, 8)).to eq 16
    end

    it 'calculates discount with unknown voucher' do
        void_voucher_object = {
            discount: {
                type: 'VOID'
            }
        }

        expect{Utils.calculate_discount(20, void_voucher_object, 8)}.to raise_error("Unsupported discount type")
    end
end
