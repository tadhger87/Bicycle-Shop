class DropOrderHeaders < ActiveRecord::Migration
  def change
    drop_table :order_headers
  end
end
