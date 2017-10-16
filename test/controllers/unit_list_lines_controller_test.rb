require 'test_helper'

class UnitListLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_list_line = unit_list_lines(:one)
  end

  test "should get index" do
    get unit_list_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_list_line_url
    assert_response :success
  end

  test "should create unit_list_line" do
    assert_difference('UnitListLine.count') do
      post unit_list_lines_url, params: { unit_list_line: { name: @unit_list_line.name, value: @unit_list_line.value } }
    end

    assert_redirected_to unit_list_line_url(UnitListLine.last)
  end

  test "should show unit_list_line" do
    get unit_list_line_url(@unit_list_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_list_line_url(@unit_list_line)
    assert_response :success
  end

  test "should update unit_list_line" do
    patch unit_list_line_url(@unit_list_line), params: { unit_list_line: { name: @unit_list_line.name, value: @unit_list_line.value } }
    assert_redirected_to unit_list_line_url(@unit_list_line)
  end

  test "should destroy unit_list_line" do
    assert_difference('UnitListLine.count', -1) do
      delete unit_list_line_url(@unit_list_line)
    end

    assert_redirected_to unit_list_lines_url
  end
end
