class AddUsersToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :users, index: true
    add_foreign_key :orders, :users
  end
end
