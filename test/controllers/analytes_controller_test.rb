require 'test_helper'

class AnalytesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analyte = analytes(:one)
  end

  test "should get index" do
    get analytes_url
    assert_response :success
  end

  test "should get new" do
    get new_analyte_url
    assert_response :success
  end

  test "should create analyte" do
    assert_difference('Analyte.count') do
      post analytes_url, params: { analyte: { name: @analyte.name } }
    end

    assert_redirected_to analyte_url(Analyte.last)
  end

  test "should show analyte" do
    get analyte_url(@analyte)
    assert_response :success
  end

  test "should get edit" do
    get edit_analyte_url(@analyte)
    assert_response :success
  end

  test "should update analyte" do
    patch analyte_url(@analyte), params: { analyte: { name: @analyte.name } }
    assert_redirected_to analyte_url(@analyte)
  end

  test "should destroy analyte" do
    assert_difference('Analyte.count', -1) do
      delete analyte_url(@analyte)
    end

    assert_redirected_to analytes_url
  end
end
