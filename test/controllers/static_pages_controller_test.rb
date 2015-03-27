require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
        assert_select "title", "Tadhg and Piotrs Bicycle Shop"

  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Tadhg and Piotrs Bicycle Shop"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Tadhg and Piotrs Bicycle Shop"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Tadhg and Piotrs Bicycle Shop"
  end
  
  test "should get bicycles" do
    get :bicycles
    assert_response :success
    assert_select "title", "Bicycles | Tadhg and Piotrs Bicycle Shop"
  end
end
