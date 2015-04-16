class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def edit
   @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
    flash[:success] = "Product updated"
      redirect_to @product
    else
      render 'edit'
    end
  end
  
  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted"
    redirect_to products_url
  end
  
  private
  
  def product_params
      params.require(:product).permit(:name, :description, :price, :image_url)
    end
end
