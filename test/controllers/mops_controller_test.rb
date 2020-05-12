require 'test_helper'

class MopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mop = mops(:one)
  end

  test "should get index" do
    get mops_url
    assert_response :success
  end

  test "should get new" do
    get new_mop_url
    assert_response :success
  end

  test "should create mop" do
    assert_difference('Mop.count') do
      post mops_url, params: { mop: { name: @mop.name, size: @mop.size } }
    end

    assert_redirected_to mop_url(Mop.last)
  end

  test "should show mop" do
    get mop_url(@mop)
    assert_response :success
  end

  test "should get edit" do
    get edit_mop_url(@mop)
    assert_response :success
  end

  test "should update mop" do
    patch mop_url(@mop), params: { mop: { name: @mop.name, size: @mop.size } }
    assert_redirected_to mop_url(@mop)
  end

  test "should destroy mop" do
    assert_difference('Mop.count', -1) do
      delete mop_url(@mop)
    end

    assert_redirected_to mops_url
  end
end
