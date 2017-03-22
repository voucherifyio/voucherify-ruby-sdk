require 'voucherify'

voucherify = Voucherify::Client.new({
                                        :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                        :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                    })
begin
    puts voucherify.validations.validate_voucher('91Ft4U', {
    tracking_id: 'john@lemon.com',
    order: {
      amount: 1000
    }
  })
rescue Voucherify::VoucherifyError => e
    puts e.message
    puts e.details
    puts e.key
end

query = {limit: 10, skip: 20, category: 'API Test'}
puts voucherify.vouchers.list(query)

puts voucherify.vouchers.enable '91Ft4U'

puts voucherify.vouchers.disable '91Ft4U'