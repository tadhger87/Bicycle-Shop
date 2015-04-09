class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :users
    add_index :items, [:user_id, :created_at]
  end
end
