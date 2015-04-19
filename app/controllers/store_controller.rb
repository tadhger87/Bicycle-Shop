class StoreController < ApplicationController
  def index
   @products = Product.order(:name)
   @cart = current_cart
  end
  
  def display_cart
  @cart = find_cart
  @products = @cart.products
end

private 
def find_cart 
  session[:cart] ||= Cart.new
end
end
