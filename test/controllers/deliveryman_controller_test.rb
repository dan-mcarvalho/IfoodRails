require "test_helper"

class DeliverymanControllerTest < ActionDispatch::IntegrationTest
  test "should get add_vehicle" do
    get deliveryman_add_vehicle_url
    assert_response :success
  end

  test "should get add_license" do
    get deliveryman_add_license_url
    assert_response :success
  end

  test "should get finish_order" do
    get deliveryman_finish_order_url
    assert_response :success
  end

  test "should get accept_order" do
    get deliveryman_accept_order_url
    assert_response :success
  end

  test "should get update" do
    get deliveryman_update_url
    assert_response :success
  end

  test "should get delete" do
    get deliveryman_delete_url
    assert_response :success
  end
end
