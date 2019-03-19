require 'test_helper'

class ExpandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expand = expands(:one)
  end

  test "should get index" do
    get expands_url
    assert_response :success
  end

  test "should get new" do
    get new_expand_url
    assert_response :success
  end

  test "should create expand" do
    assert_difference('Expand.count') do
      post expands_url, params: { expand: { text: @expand.text } }
    end

    assert_redirected_to expand_url(Expand.last)
  end

  test "should show expand" do
    get expand_url(@expand)
    assert_response :success
  end

  test "should get edit" do
    get edit_expand_url(@expand)
    assert_response :success
  end

  test "should update expand" do
    patch expand_url(@expand), params: { expand: { text: @expand.text } }
    assert_redirected_to expand_url(@expand)
  end

  test "should destroy expand" do
    assert_difference('Expand.count', -1) do
      delete expand_url(@expand)
    end

    assert_redirected_to expands_url
  end
end
