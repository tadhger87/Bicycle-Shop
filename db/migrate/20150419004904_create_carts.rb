class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :orders, index: true

      t.timestamps null: false
    end
    add_foreign_key :carts, :orders
  end
end
