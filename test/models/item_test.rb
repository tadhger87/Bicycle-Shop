require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def setup
    @item = Item.new(name: "Example Item", description: "this is some description", price: 9.99, image_url: "example.jpg")
  end

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
