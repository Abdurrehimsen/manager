require 'test_helper'

class ReagentListLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reagent_list_line = reagent_list_lines(:one)
  end

  test "should get index" do
    get reagent_list_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_reagent_list_line_url
    assert_response :success
  end

  test "should create reagent_list_line" do
    assert_difference('ReagentListLine.count') do
      post reagent_list_lines_url, params: { reagent_list_line: { name: @reagent_list_line.name } }
    end

    assert_redirected_to reagent_list_line_url(ReagentListLine.last)
  end

  test "should show reagent_list_line" do
    get reagent_list_line_url(@reagent_list_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_reagent_list_line_url(@reagent_list_line)
    assert_response :success
  end

  test "should update reagent_list_line" do
    patch reagent_list_line_url(@reagent_list_line), params: { reagent_list_line: { name: @reagent_list_line.name } }
    assert_redirected_to reagent_list_line_url(@reagent_list_line)
  end

  test "should destroy reagent_list_line" do
    assert_difference('ReagentListLine.count', -1) do
      delete reagent_list_line_url(@reagent_list_line)
    end

    assert_redirected_to reagent_list_lines_url
  end
end
