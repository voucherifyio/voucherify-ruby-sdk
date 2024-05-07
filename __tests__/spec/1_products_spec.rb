require_relative '../lib/products.rb'
require_relative '../lib/config.rb'
require_relative '../lib/voucherify_data.rb'

RSpec.describe 'Products API', :order => :defined do
  before(:each) do
    @products_api_instance = Config.products_api_instance()
    @voucherify_data = VoucherifyData.instance()

  end

  it 'creates a product with price 20000 and price 60000', :order => :first do
    created_product = create_product(@products_api_instance, 20000)
    expect(created_product).not_to be_nil

    @voucherify_data.set_product(created_product)
    @voucherify_data.add_product_id(created_product.source_id)

    created_product_2 = create_product(@products_api_instance, 60000)
    expect(created_product_2).not_to be_nil

    @voucherify_data.add_product_id(created_product_2.source_id)
  end

  it 'get product previously created', :order => :second do
    product = @products_api_instance.get_product(@voucherify_data.get_product().source_id)

    expect(product).not_to be_nil
    expect(product.price).to eq(20000)
  end

  it 'update price of created product to 55000 using source_id for founding product', :order => :third do
    updated_product = update_product(@products_api_instance, @voucherify_data.get_product().source_id)

    expect(updated_product).not_to be_nil
    expect(updated_product.price).to eq(55000)
  end

  it 'list products', :order => :fourth do
    products = @products_api_instance.list_products()

    expect(products).not_to be_nil
    expect(products.products.size).to be > 0
  end

  it 'update products in bulk', :order => :fifth do
    async_action = update_product_in_bulk(@products_api_instance)

    expect(async_action).not_to be_nil
  end

  it 'update metadata in bulk', :order => :sixth do
    async_action = update_metadata_in_bulk(@products_api_instance, @voucherify_data.get_product_ids())

    expect(async_action).not_to be_nil
  end

  it 'add sku to product with price 5000', :order => :seventh do
    sku = create_sku(@products_api_instance, @voucherify_data.get_product().source_id, 5000)

    expect(sku).not_to be_nil
    expect(sku.source_id).not_to be_nil
    expect(sku.price).to eq(5000)

    @voucherify_data.set_sku(sku)
  end

  it 'update sku should have price equals 2000', :order => :eighth do
    sku = update_sku(@products_api_instance, @voucherify_data.get_product().source_id, @voucherify_data.get_sku().source_id, 2000)

    expect(sku).not_to be_nil
    expect(sku.source_id).not_to be_nil
    expect(sku.price).to eq(2000)
  end

  it 'get sku', :order => :ninth do
    sku = @products_api_instance.get_sku(@voucherify_data.get_sku().source_id)

    expect(sku).not_to be_nil
  end

  it 'list skus in product', :order => :tenth do
    skus = @products_api_instance.list_skus_in_product(@voucherify_data.get_product().source_id)

    expect(skus).not_to be_nil
    expect(skus.skus.size).to be > 0
  end

  #REMOVE ELEMENTS
  it 'remove product', :order => :eleventh do
    deleted_product = delete_product(@products_api_instance, @voucherify_data.get_product().source_id)

    expect(deleted_product).to be_nil
  end 

  it 'remove sku', :order => :twelweth do
    deleted_sku = delete_sku(@products_api_instance, @voucherify_data.get_product().source_id, @voucherify_data.get_sku().source_id)

    expect(deleted_sku).to be_nil
  end
end
