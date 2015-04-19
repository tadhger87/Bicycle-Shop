require 'test_helper'

class OrderItemsControllerTest < ActionController::TestCase
  
 # test "should get create" do
  #  get :create
   # assert_response :success
  #end

  #test "should get update" do
   # get :update
    #assert_response :success
  #end

  #test "should get destroy" do
   # get :destroy
    #assert_response :success
  #end
  
  test "should create order_item" do
assert_difference('OrderItem.count') do
 post :create, product_id: products(:ruby).id
end
 assert_redirected_to cart_path(assigns(:order_item).cart)
end

end
