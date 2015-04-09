class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url

      t.timestamps null: false
    end
    add_foreign_key :items, :users
    add_index :items, :user_id
  end
  
end
