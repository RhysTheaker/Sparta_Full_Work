require 'test_helper'

class GroundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grounds_index_url
    assert_response :success
  end

  test "should get show" do
    get grounds_show_url
    assert_response :success
  end

  test "should get new" do
    get grounds_new_url
    assert_response :success
  end

  test "should get edit" do
    get grounds_edit_url
    assert_response :success
  end

  test "should get create" do
    get grounds_create_url
    assert_response :success
  end

  test "should get update" do
    get grounds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get grounds_destroy_url
    assert_response :success
  end

end
