require 'voucherify/utils'

describe Utils do
    it 'rounds money' do
        utils = Utils.new;

        amount = 1234.5678;

        rounded_money = utils.round_money(amount)

        expect(rounded_money).to eq 1234.57
    end

    it 'validates percent discount' do
        utils = Utils.new;

        expect{utils.validate_percent_discount(1000)}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
        expect{utils.validate_percent_discount(-1)}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
        expect{utils.validate_percent_discount('string')}.to raise_error("Invalid voucher, percent discount should be between 0-100.")
    end

    it 'validates amount discount' do
        utils = Utils.new;

        expect{utils.validate_amount_discount(-1)}.to raise_error("Invalid voucher, amount discount must be bigger than zero.")
        expect{utils.validate_amount_discount('string')}.to raise_error("Invalid voucher, amount discount must be bigger than zero.")

    end

    it 'validates unit discount' do
        utils = Utils.new;

        expect{utils.validate_unit_discount(-1)}.to raise_error("Invalid voucher, unit discount must be bigger than zero.")
        expect{utils.validate_unit_discount('string')}.to raise_error("Invalid voucher, unit discount must be bigger than zero.")

    end
end
