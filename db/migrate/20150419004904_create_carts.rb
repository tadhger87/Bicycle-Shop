class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      add_reference :orders, index: true

      t.timestamps null: false
    end
  end
end
