require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get bloglists" do
    get home_bloglists_url
    assert_response :success
  end

end
