require 'test_helper'

class PreviousRentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get previous_rentals_list_url
    assert_response :success
  end

  test "should get destroy" do
    get previous_rentals_destroy_url
    assert_response :success
  end

end
