class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_item
end
