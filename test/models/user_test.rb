require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end
  
   test "associated microposts should be destroyed" do
    @user.save
    @user.microposts.create!(content: "Lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end
  
  test "associated items should be destroyed" do
    @user.save
    @user.items.create!(name: "Example Item", description: "this is some description", price: 9.99, image_url: "example.jpg" )
    assert_difference 'Item.count', -1 do
      @user.destroy
    end
  end
end
