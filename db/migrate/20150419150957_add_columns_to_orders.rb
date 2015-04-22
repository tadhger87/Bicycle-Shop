class AddColumnsToOrders < ActiveRecord::Migration
  def change
     add_column :orders, :name, :varchar
     add_column :orders, :address, :text
     add_column :orders, :email, :varchar
     add_column :orders, :pay_type, :varchar
     remove_column :order_items, :quantity
     add_column :order_items, :quantity, :integer, default: 1
     
     remove_column :orders, :subtotal
     remove_column :orders, :tax
     remove_column :orders, :shipping
     remove_column :orders, :total
     
     remove_column :carts, :orders_id
     remove_column :order_items, :total_price
     
     add_reference :order_items, :order_id, index: true
     add_foreign_key :order_items, :orders
  end
end
