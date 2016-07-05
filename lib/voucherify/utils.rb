module Utils
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

    def calculate_price(base_price, voucher, unit_price = nil)
        if !voucher[:discount]
            raise "Unsupported voucher type."
        end

        if voucher[:discount][:type] === 'PERCENT'
            discount = voucher[:discount][:percent_off]
            validate_percent_discount(discount);
            price_discount = base_price * (discount / 100)
            return round_money(base_price - price_discount)

        elsif voucher[:discount][:type] === 'AMOUNT'
            discount = voucher[:discount][:amount_off]
            validate_amount_discount(discount)
            new_price = base_price - discount
            return round_money(new_price > 0 ? (new_price) : 0)

        elsif voucher[:discount][:type] === 'UNIT'
            if !unit_price
                raise "Missing unit_price argument."
            end
            discount = voucher[:discount][:unit_off]
            validate_unit_discount(discount)
            new_price = base_price - unit_price * discount
            return round_money(new_price > 0 ? (new_price) : 0)

        else
            raise "Unsupported discount type"
        end
    end

    def calculate_discount(base_price, voucher, unit_price = nil)
        if !voucher[:discount]
            raise "Unsupported voucher type."
        end

        if voucher[:discount][:type] === 'PERCENT'
            discount = voucher[:discount][:percent_off]
            validate_percent_discount(discount);
            price_discount = base_price * (discount / 100)
            return round_money(price_discount)

        elsif voucher[:discount][:type] === 'AMOUNT'
            discount = voucher[:discount][:amount_off]
            validate_amount_discount(discount)
            new_price = base_price - discount
            return round_money(new_price > 0 ? (discount) : (base_price))

        elsif voucher[:discount][:type] === 'UNIT'
            if !unit_price
                raise "Missing unit_price argument."
            end
            discount = voucher[:discount][:unit_off]
            validate_unit_discount(discount)
            price_discount = unit_price * discount
            return round_money(price_discount > base_price ? (base_price) : (price_discount))

        else
            raise "Unsupported discount type"
        end
    end
end
