require 'test_helper'

class MagazinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get magazines_index_url
    assert_response :success
  end

  test "should get show" do
    get magazines_show_url
    assert_response :success
  end

  test "should get new" do
    get magazines_new_url
    assert_response :success
  end

  test "should get edit" do
    get magazines_edit_url
    assert_response :success
  end

  test "should get delete" do
    get magazines_delete_url
    assert_response :success
  end

  test "should get list" do
    get magazines_list_url
    assert_response :success
  end

end
