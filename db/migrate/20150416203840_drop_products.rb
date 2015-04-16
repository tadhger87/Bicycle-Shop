class DropProducts < ActiveRecord::Migration
  def change
    drop_table :product
  end
end
