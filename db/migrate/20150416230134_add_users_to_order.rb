class AddUsersToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :users, index: true
    
  end
end
