class CreateOrderHeaders < ActiveRecord::Migration
  def change
    create_table :order_headers do |t|
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_headers, :users
  end
end
