require 'test_helper'

class UnitListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_list = unit_lists(:one)
  end

  test "should get index" do
    get unit_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_list_url
    assert_response :success
  end

  test "should create unit_list" do
    assert_difference('UnitList.count') do
      post unit_lists_url, params: { unit_list: { name: @unit_list.name } }
    end

    assert_redirected_to unit_list_url(UnitList.last)
  end

  test "should show unit_list" do
    get unit_list_url(@unit_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_list_url(@unit_list)
    assert_response :success
  end

  test "should update unit_list" do
    patch unit_list_url(@unit_list), params: { unit_list: { name: @unit_list.name } }
    assert_redirected_to unit_list_url(@unit_list)
  end

  test "should destroy unit_list" do
    assert_difference('UnitList.count', -1) do
      delete unit_list_url(@unit_list)
    end

    assert_redirected_to unit_lists_url
  end
end
