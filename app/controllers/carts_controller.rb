class CartsController < ApplicationController
  
  def index
    @carts = Cart.all
  end
  
  def show
    @order_items = current_cart.order_items
  end
end
