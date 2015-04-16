class ChangeItemsName < ActiveRecord::Migration
   def self.up
    rename_table :items, :product
  end
end
