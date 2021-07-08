require "test_helper"

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get add_item" do
    get order_add_item_url
    assert_response :success
  end

  test "should get remove_item" do
    get order_remove_item_url
    assert_response :success
  end

  test "should get clear_cart" do
    get order_clear_cart_url
    assert_response :success
  end

  test "should get total_price" do
    get order_total_price_url
    assert_response :success
  end
end
