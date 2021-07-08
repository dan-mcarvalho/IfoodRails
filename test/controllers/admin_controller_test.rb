require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get activate_deliveryman" do
    get admin_activate_deliveryman_url
    assert_response :success
  end

  test "should get register_rest_owner" do
    get admin_register_rest_owner_url
    assert_response :success
  end

  test "should get list_users" do
    get admin_list_users_url
    assert_response :success
  end

  test "should get update" do
    get admin_update_url
    assert_response :success
  end
end
