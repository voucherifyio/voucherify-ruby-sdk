require 'uri'

module Voucherify
  module Service
    class Products
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create(product)
        @client.post('/products', product.to_json)
      end

      def get(product_id)
        @client.get("/products/#{URI.encode(product_id)}")
      end

      def update(product)
        @client.put("/products/#{URI.encode(product['product_id'] || product[:product_id])}", product.to_json)
      end

      def delete(product_id)
        @client.delete("/products/#{URI.encode(product_id)}")
      end

      def list(query = {})
        @client.get('/products', query)
      end

      def create_sku(product_id, sku)
        @client.post("/products/#{URI.encode(product_id)}/skus", sku)
      end

      def get_sku(product_id, sku_id)
        @client.get("/products/#{URL.encode(product_id)}/skus/#{URL.encode(sku_id)}")
      end

      def update_sku(product_id, sku)
        @client.put("/products/#{URL.encode(product_id)}/skus/#{URL.encode(sku['id'] || sku[:id])}")
      end

      def delete_sku(product_id, sku_id)
        @client.delete("/products/#{URL.encode(product_id)}/skus/#{URL.encode(sku_id)}")
      end

      def list_skus(product_id)
        @client.get("/products/#{URL.encode(product_id)}/skus")
      end
    end
  end
end