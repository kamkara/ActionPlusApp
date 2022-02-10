require "test_helper"

class AppSettingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_setting_index_url
    assert_response :success
  end
end
