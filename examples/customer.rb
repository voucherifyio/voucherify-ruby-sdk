require 'voucherify'

voucherify = Voucherify::Client.new({
                                        :applicationId => 'c70a6f00-cf91-4756-9df5-47628850002b',
                                        :clientSecretKey => '3266b9f8-e246-4f79-bdf0-833929b1380c'
                                    })

new_customer = voucherify.customers.create_customer({
                                                        name: 'John Doe',
                                                        email: 'john@email.com',
                                                        description: 'Sample description about customer',
                                                        metadata: {
                                                            lang: 'en'
                                                        }
                                                    })

puts 'Created Customer:'
puts new_customer

customer = voucherify.customers.get_customer new_customer['id']

puts 'Retrieved Customer:'
puts customer

customer[:description] = 'Sample description of customer with updates'

updated_customer = voucherify.customers.update_customer customer

puts 'Updated Customer:'
puts updated_customer

voucherify.customers.delete_customer updated_customer['id']
