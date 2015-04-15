class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :cart, index: true
      t.references :items, index: true
      t.integer :quantity

      t.timestamps null: false
      
    end
    add_foreign_key :cart_items, :carts
    add_foreign_key :cart_items, :items
    add_index :cart_items, [:cart_id, :items_id]
  end
end
