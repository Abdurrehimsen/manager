require 'test_helper'

class ModeListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mode_list = mode_lists(:one)
  end

  test "should get index" do
    get mode_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_mode_list_url
    assert_response :success
  end

  test "should create mode_list" do
    assert_difference('ModeList.count') do
      post mode_lists_url, params: { mode_list: { name: @mode_list.name } }
    end

    assert_redirected_to mode_list_url(ModeList.last)
  end

  test "should show mode_list" do
    get mode_list_url(@mode_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_mode_list_url(@mode_list)
    assert_response :success
  end

  test "should update mode_list" do
    patch mode_list_url(@mode_list), params: { mode_list: { name: @mode_list.name } }
    assert_redirected_to mode_list_url(@mode_list)
  end

  test "should destroy mode_list" do
    assert_difference('ModeList.count', -1) do
      delete mode_list_url(@mode_list)
    end

    assert_redirected_to mode_lists_url
  end
end
