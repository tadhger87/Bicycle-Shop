class CombineItemsInCart < ActiveRecord::Migration
  def up

Cart.all.each do |cart|

sums = cart.order_items.group(:product_id).sum(:quantity)
sums.each do |product_id, quantity|
if quantity > 1

cart.order_items.where(product_id: product_id).delete_all

cart.order_items.create(product_id: product_id, quantity: quantity)
end
end
end
end

def down
# split items with quantity>1 into multiple items
OrderItem.where("quantity>1").each do |order_item|
# add individual items
order_item.quantity.times do
OrderItem.create cart_id: order_item.cart_id,
product_id: order_item.product_id, quantity: 1
end
# remove original item
line_item.destroy
end
end
end
