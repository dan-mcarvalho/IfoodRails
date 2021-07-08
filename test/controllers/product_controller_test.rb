require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get most_ordered" do
    get product_most_ordered_url
    assert_response :success
  end

  test "should get create" do
    get product_create_url
    assert_response :success
  end

  test "should get update" do
    get product_update_url
    assert_response :success
  end

  test "should get destroy" do
    get product_destroy_url
    assert_response :success
  end

  test "should get show_info" do
    get product_show_info_url
    assert_response :success
  end
end
