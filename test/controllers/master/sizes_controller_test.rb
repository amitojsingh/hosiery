require 'test_helper'

class Master::SizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_size = master_sizes(:one)
  end

  test "should get index" do
    get master_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_master_size_url
    assert_response :success
  end

  test "should create master_size" do
    assert_difference('Master::Size.count') do
      post master_sizes_url, params: { master_size: { size: @master_size.size } }
    end

    assert_redirected_to master_size_url(Master::Size.last)
  end

  test "should show master_size" do
    get master_size_url(@master_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_size_url(@master_size)
    assert_response :success
  end

  test "should update master_size" do
    patch master_size_url(@master_size), params: { master_size: { size: @master_size.size } }
    assert_redirected_to master_size_url(@master_size)
  end

  test "should destroy master_size" do
    assert_difference('Master::Size.count', -1) do
      delete master_size_url(@master_size)
    end

    assert_redirected_to master_sizes_url
  end
end
