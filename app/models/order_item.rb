class OrderItem < ActiveRecord::Base
  belongs_to :order_header
  belongs_to :item
end
