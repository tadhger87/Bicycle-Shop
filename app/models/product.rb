class Product < ActiveRecord::Base
  
  has_many :order_items
  has_many :orders, through: :order_items
  before_destroy :ensure_not_referenced_by_any_order_item
  
  validates :name, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
  }
  
  private
  # ensure that there are no order items referencing this product
    def ensure_not_referenced_by_any_order_item
      if order_items.empty?
        return true
    else
        errors.add(:base, 'Order Items present')
      return false
    end
  end
    end
