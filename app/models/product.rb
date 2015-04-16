class Product < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }
  #validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true
end
