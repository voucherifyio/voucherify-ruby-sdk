class Utils
    def round_money(value)
        value.round(2)
    end

    def validate_percent_discount(discount)
        if !(discount.is_a? Numeric) || !discount.between?(0, 100)
            raise "Invalid voucher, percent discount should be between 0-100."
        end
    end

    def validate_amount_discount(discount)
        if !(discount.is_a? Numeric) || discount < 0
            raise "Invalid voucher, amount discount must be bigger than zero."
        end
    end

    def validate_unit_discount(discount)
        if !(discount.is_a? Numeric) || discount < 0
            raise "Invalid voucher, unit discount must be bigger than zero."
        end
    end

    def calculate_price(base_price, voucher, unit_price)
        @e = 100; # Number of digits after the decimal separator
        @discount = 0;

        if !voucher.discount
            return nil
        end
    end
end
