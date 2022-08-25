class ProductsController < ApplicationController
  authorize_resource class: false
  def product_params
    params.require(:product).permit(:name, :brand, :quantity, :mrp, :selling_price, :tags, :sku, :level1, :level2, :level3, :description, :measurement_unit)
  end

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new()
    product.name = params[:name]
    product.brand = params[:brand]
    product.quantity = params[:quantity]
    product.mrp = params[:mrp]
    product.selling_price = params[:selling_price]
    product.tags = params[:tags]
    product.sku = params[:sku]
    product.level1 = params[:level1]
    product.level2 = params[:level2]
    product.level3 = params[:level3]
    product.measurement_unit = params[:measurement_unit]
    product.description = params[:description]
    product.save()
    render json: product
  end

  def update
    id = params[:id]
    product = Product.find_by(id:id)
    product.update_attributes(product_params)
    render json: product
  end

  def destroy
    id = params[:id]
    product = Product.find_by(id:id)
    if product.destroy
      render json: { message: "Delete Successful" }
    end
  end
end
