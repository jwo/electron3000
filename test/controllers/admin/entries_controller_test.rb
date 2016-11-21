require 'test_helper'

class Admin::EntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_entries_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_entries_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_entries_edit_url
    assert_response :success
  end

end
