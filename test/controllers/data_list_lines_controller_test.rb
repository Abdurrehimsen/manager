require 'test_helper'

class DataListLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_list_line = data_list_lines(:one)
  end

  test "should get index" do
    get data_list_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_data_list_line_url
    assert_response :success
  end

  test "should create data_list_line" do
    assert_difference('DataListLine.count') do
      post data_list_lines_url, params: { data_list_line: { value: @data_list_line.value } }
    end

    assert_redirected_to data_list_line_url(DataListLine.last)
  end

  test "should show data_list_line" do
    get data_list_line_url(@data_list_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_list_line_url(@data_list_line)
    assert_response :success
  end

  test "should update data_list_line" do
    patch data_list_line_url(@data_list_line), params: { data_list_line: { value: @data_list_line.value } }
    assert_redirected_to data_list_line_url(@data_list_line)
  end

  test "should destroy data_list_line" do
    assert_difference('DataListLine.count', -1) do
      delete data_list_line_url(@data_list_line)
    end

    assert_redirected_to data_list_lines_url
  end
end
