class Item < ActiveRecord::Base
  belongs_to :order
  #validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true
end
