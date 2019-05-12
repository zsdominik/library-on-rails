require 'test_helper'

class ReadContentControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get read_content_read_url
    assert_response :success
  end

end
