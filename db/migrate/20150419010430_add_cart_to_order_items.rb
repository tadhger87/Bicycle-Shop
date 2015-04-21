class AddCartToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :cart, index: true
    add_foreign_key :order_items, :cart
    remove_column :order_items, :order_id
    remove_column :orders, :order_status_id
    
  end
end
    