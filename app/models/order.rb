class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  
#PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  
  def add_order_items_from_cart(cart)
    cart.order_items.each do |item|
      item.cart_id = nil
      order_items << item
    end
  end
  validates :name, :address, :email, presence: true
end
