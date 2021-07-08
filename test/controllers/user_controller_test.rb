require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get user_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_destroy_url
    assert_response :success
  end

  test "should get list_restaurants" do
    get user_list_restaurants_url
    assert_response :success
  end

  test "should get last_orders" do
    get user_last_orders_url
    assert_response :success
  end

  test "should get register" do
    get user_register_url
    assert_response :success
  end
end
