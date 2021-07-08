require "test_helper"

class RateControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rate_create_url
    assert_response :success
  end

  test "should get update" do
    get rate_update_url
    assert_response :success
  end
end
