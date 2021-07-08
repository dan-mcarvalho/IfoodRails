require "test_helper"

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get show_info" do
    get restaurant_show_info_url
    assert_response :success
  end

  test "should get total_sale_value" do
    get restaurant_total_sale_value_url
    assert_response :success
  end

  test "should get restaurant_rating" do
    get restaurant_restaurant_rating_url
    assert_response :success
  end

  test "should get best_clients" do
    get restaurant_best_clients_url
    assert_response :success
  end
end
