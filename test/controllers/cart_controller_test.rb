require "test_helper"

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get total_price" do
    get cart_total_price_url
    assert_response :success
  end

  test "should get add_item" do
    get cart_add_item_url
    assert_response :success
  end

  test "should get create_cart" do
    get cart_create_cart_url
    assert_response :success
  end

  test "should get remove_item" do
    get cart_remove_item_url
    assert_response :success
  end

  test "should get list_items" do
    get cart_list_items_url
    assert_response :success
  end

  test "should get clear_cart" do
    get cart_clear_cart_url
    assert_response :success
  end

  test "should get user_info" do
    get cart_user_info_url
    assert_response :success
  end

  test "should get restaurant_info" do
    get cart_restaurant_info_url
    assert_response :success
  end

  test "should get show_status" do
    get cart_show_status_url
    assert_response :success
  end
end
