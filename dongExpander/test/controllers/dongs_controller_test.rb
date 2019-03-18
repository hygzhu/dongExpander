require 'test_helper'

class DongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dong = dongs(:one)
  end

  test "should get index" do
    get dongs_url
    assert_response :success
  end

  test "should get new" do
    get new_dong_url
    assert_response :success
  end

  test "should create dong" do
    assert_difference('Dong.count') do
      post dongs_url, params: { dong: { name: @dong.name, url: @dong.url } }
    end

    assert_redirected_to dong_url(Dong.last)
  end

  test "should show dong" do
    get dong_url(@dong)
    assert_response :success
  end

  test "should get edit" do
    get edit_dong_url(@dong)
    assert_response :success
  end

  test "should update dong" do
    patch dong_url(@dong), params: { dong: { name: @dong.name, url: @dong.url } }
    assert_redirected_to dong_url(@dong)
  end

  test "should destroy dong" do
    assert_difference('Dong.count', -1) do
      delete dong_url(@dong)
    end

    assert_redirected_to dongs_url
  end
end
