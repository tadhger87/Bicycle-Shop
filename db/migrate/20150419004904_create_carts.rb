class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|

      t.timestamps null: false
      t.reference :orders, index: true
    end
    add_foreign_key :carts, :orders
  end
end
