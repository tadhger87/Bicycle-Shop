require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def setup
    @user = users(:tadhg)
    @item = Item.new(name: "Example Item", description: "this is some description", price: 9.99, image_url: "example.jpg" )#, user_id: @user.id)
  end
#  @micropost = @user.microposts.build(content: "Lorem ipsum")

  test "should be valid" do
    assert @item.valid?
  end
  
  test "name should be present" do
    @item.name = "     "
    assert_not @item.valid?
  end
  
  test "description should be present" do
    @item.description = "     "
    assert_not @item.valid?
  end
  
  test "price should be present" do
    @item.price = "     "
    assert_not @item.valid?
  end
  
  test "image_url should be present" do
    @item.image_url = "     "
    assert_not @item.valid?
  end
end
