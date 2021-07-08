require "test_helper"

class RestaurantOwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get change_order_status" do
    get restaurant_owner_change_order_status_url
    assert_response :success
  end

  test "should get update_product" do
    get restaurant_owner_update_product_url
    assert_response :success
  end

  test "should get create_restaurant" do
    get restaurant_owner_create_restaurant_url
    assert_response :success
  end

  test "should get set_stock" do
    get restaurant_owner_set_stock_url
    assert_response :success
  end

  test "should get show_stock" do
    get restaurant_owner_show_stock_url
    assert_response :success
  end
end
