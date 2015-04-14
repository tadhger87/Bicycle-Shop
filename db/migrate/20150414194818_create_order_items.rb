class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order_header, index: true
      t.references :item, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :order_items, :order_headers
    add_foreign_key :order_items, :items
    add_index :order_items, [:order_header_id, :item_id]
  end
end
