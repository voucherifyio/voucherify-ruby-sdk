require 'voucherify'

voucherify = Voucherify.new({
                                "applicationId" => "c70a6f00-cf91-4756-9df5-47628850002b",
                                "clientSecretKey" => "3266b9f8-e246-4f79-bdf0-833929b1380c"
                            })

new_customer = voucherify.create_customer({
                                              name: "John Doe",
                                              email: "john@email.com",
                                              description: "Sample description about customer",
                                              metadata: {
                                                  lang: "en"
                                              }
                                          })

print(new_customer)

customer = voucherify.fetch_customer(new_customer["id"])

print(customer)

customer[:description] = "Sample description of customer with updates"

updated_customer = voucherify.update_customer(customer)

print(updated_customer)

voucherify.delete_customer(updated_customer["id"])
