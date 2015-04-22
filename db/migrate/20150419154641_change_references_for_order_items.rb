#class ChangeReferencesForOrderItems < ActiveRecord::Migration
#  def change
#    
#    remove_column :order_items, :orders_id
#    remove_column :order_items, :order_id_id
#    
#    add_column :order_items, :order_id, :integer
#  end
#end
