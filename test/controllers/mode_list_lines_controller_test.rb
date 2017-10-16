require 'test_helper'

class ModeListLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mode_list_line = mode_list_lines(:one)
  end

  test "should get index" do
    get mode_list_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_mode_list_line_url
    assert_response :success
  end

  test "should create mode_list_line" do
    assert_difference('ModeListLine.count') do
      post mode_list_lines_url, params: { mode_list_line: { name: @mode_list_line.name } }
    end

    assert_redirected_to mode_list_line_url(ModeListLine.last)
  end

  test "should show mode_list_line" do
    get mode_list_line_url(@mode_list_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_mode_list_line_url(@mode_list_line)
    assert_response :success
  end

  test "should update mode_list_line" do
    patch mode_list_line_url(@mode_list_line), params: { mode_list_line: { name: @mode_list_line.name } }
    assert_redirected_to mode_list_line_url(@mode_list_line)
  end

  test "should destroy mode_list_line" do
    assert_difference('ModeListLine.count', -1) do
      delete mode_list_line_url(@mode_list_line)
    end

    assert_redirected_to mode_list_lines_url
  end
end
