class OrderItemsController < ApplicationController
 
 def create
 @cart = current_cart
 product = Product.find(params[:product_id])
 @order_item = @cart.order_items.build(product: product)
respond_to do |format|
if @order_item.save
 format.html { redirect_to @order_item.cart,
notice: 'Line item was successfully created.' }
format.json { render json: @order_item,
status: :created, location: @order_item }
else
format.html { render action: "new" }
format.json { render json: @order_item.errors,
status: :unprocessable_entity }
end

end
end

end