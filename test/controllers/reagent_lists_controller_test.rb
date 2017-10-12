require 'test_helper'

class ReagentListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reagent_list = reagent_lists(:one)
  end

  test "should get index" do
    get reagent_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_reagent_list_url
    assert_response :success
  end

  test "should create reagent_list" do
    assert_difference('ReagentList.count') do
      post reagent_lists_url, params: { reagent_list: { name: @reagent_list.name } }
    end

    assert_redirected_to reagent_list_url(ReagentList.last)
  end

  test "should show reagent_list" do
    get reagent_list_url(@reagent_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_reagent_list_url(@reagent_list)
    assert_response :success
  end

  test "should update reagent_list" do
    patch reagent_list_url(@reagent_list), params: { reagent_list: { name: @reagent_list.name } }
    assert_redirected_to reagent_list_url(@reagent_list)
  end

  test "should destroy reagent_list" do
    assert_difference('ReagentList.count', -1) do
      delete reagent_list_url(@reagent_list)
    end

    assert_redirected_to reagent_lists_url
  end
end
