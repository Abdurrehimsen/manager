require 'test_helper'

class DataListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_list = data_lists(:one)
  end

  test "should get index" do
    get data_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_data_list_url
    assert_response :success
  end

  test "should create data_list" do
    assert_difference('DataList.count') do
      post data_lists_url, params: { data_list: { name: @data_list.name } }
    end

    assert_redirected_to data_list_url(DataList.last)
  end

  test "should show data_list" do
    get data_list_url(@data_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_list_url(@data_list)
    assert_response :success
  end

  test "should update data_list" do
    patch data_list_url(@data_list), params: { data_list: { name: @data_list.name } }
    assert_redirected_to data_list_url(@data_list)
  end

  test "should destroy data_list" do
    assert_difference('DataList.count', -1) do
      delete data_list_url(@data_list)
    end

    assert_redirected_to data_lists_url
  end
end
