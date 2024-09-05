require_relative 'utils.rb'
require 'VoucherifySdk'

def create_customer(customers_api_instance)
    begin
        # Create Customer
        created_customer = customers_api_instance.create_customer({
            customers_create_request_body: VoucherifySdk::CustomersCreateRequestBody.new({
            source_id: generate_random_string(),
            name: "John Doe",
            address: VoucherifySdk::CustomerAddress.new({
                country: "US",
                city: "New York",
                line_1: "5th Avenue",
                line_2: "1/2",
                postal_code: "11-111"
            })
            })
        })
        return created_customer
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end

def delete_customer_permanently(customers_api_instance, customer_id)
    begin
        # Delete Customer
        result = customers_api_instance.customer_permanently_deletion(customer_id)
        return result
    rescue VoucherifySdk::ApiError => e
        return nil
    end
end
