require 'test_helper'

class Master::ColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_color = master_colors(:one)
  end

  test "should get index" do
    get master_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_master_color_url
    assert_response :success
  end

  test "should create master_color" do
    assert_difference('Master::Color.count') do
      post master_colors_url, params: { master_color: { colorname: @master_color.colorname } }
    end

    assert_redirected_to master_color_url(Master::Color.last)
  end

  test "should show master_color" do
    get master_color_url(@master_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_color_url(@master_color)
    assert_response :success
  end

  test "should update master_color" do
    patch master_color_url(@master_color), params: { master_color: { colorname: @master_color.colorname } }
    assert_redirected_to master_color_url(@master_color)
  end

  test "should destroy master_color" do
    assert_difference('Master::Color.count', -1) do
      delete master_color_url(@master_color)
    end

    assert_redirected_to master_colors_url
  end
end
