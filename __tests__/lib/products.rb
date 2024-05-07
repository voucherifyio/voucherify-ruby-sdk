require_relative 'utils.rb'
require 'VoucherifySdk'

def create_product(products_api_instance, price)
  begin
    result = products_api_instance.create_product({
      products_create_request_body: VoucherifySdk::ProductsCreateRequestBody.new({
        source_id: generate_random_string(),
        name: generate_random_string(),
        price: price,
        attributes: ["color", "memory", "processor"]
      })
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def delete_product(products_api_instance, product_id)
  begin
    result = products_api_instance.delete_product(product_id, {
      force: true
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def update_product(products_api_instance, source_id)
  begin
    result = products_api_instance.update_product(source_id, {
      products_update_request_body: VoucherifySdk::ProductsUpdateRequestBody.new({
        price: 55000
      })
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def update_product_in_bulk(products_api_instance)
  begin
    result = products_api_instance.update_products_in_bulk({
      products_update_in_bulk_request_body: [
        VoucherifySdk::ProductsUpdateInBulkRequestBody.new({source_id: generate_random_string(), price: 1000}),
        VoucherifySdk::ProductsUpdateInBulkRequestBody.new({source_id: generate_random_string(), price: 2000}),
      ] 
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def update_metadata_in_bulk(products_api_instance, source_ids)
  begin
    result = products_api_instance.update_products_metadata_in_bulk({
      products_metadata_update_in_bulk_request_body: VoucherifySdk::ProductsMetadataUpdateInBulkRequestBody.new({
        source_ids: source_ids, 
        metadata: {
          "key1" => "value1",
          "key2" => "value2"
        }
      })
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def create_sku(products_api_instance, source_id, price)
  begin
    result = products_api_instance.create_sku(source_id, {
      products_skus_create_request_body: VoucherifySdk::ProductsSkusCreateRequestBody.new({
        source_id: generate_random_string(),
        price: price,
        attributes: {
          "color": "red",
          "memory": "16GB",
          "processor": "Intel Core i7"
        }
      })
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def update_sku(products_api_instance, source_id, sku_id, price)
  begin
    result = products_api_instance.update_sku(source_id, sku_id, {
      products_skus_update_request_body: VoucherifySdk::ProductsSkusUpdateRequestBody.new({
        price: price
      })
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end

def delete_sku(products_api_instance, source_id, sku_id)
  begin
    result = products_api_instance.delete_sku(source_id, sku_id, {
      force: true
    })
    return result
  rescue VoucherifySdk::ApiError => e
    return nil
  end
end
