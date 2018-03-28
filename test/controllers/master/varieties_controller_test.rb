require 'test_helper'

class Master::VarietiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_variety = master_varieties(:one)
  end

  test "should get index" do
    get master_varieties_url
    assert_response :success
  end

  test "should get new" do
    get new_master_variety_url
    assert_response :success
  end

  test "should create master_variety" do
    assert_difference('Master::Variety.count') do
      post master_varieties_url, params: { master_variety: { variety: @master_variety.variety } }
    end

    assert_redirected_to master_variety_url(Master::Variety.last)
  end

  test "should show master_variety" do
    get master_variety_url(@master_variety)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_variety_url(@master_variety)
    assert_response :success
  end

  test "should update master_variety" do
    patch master_variety_url(@master_variety), params: { master_variety: { variety: @master_variety.variety } }
    assert_redirected_to master_variety_url(@master_variety)
  end

  test "should destroy master_variety" do
    assert_difference('Master::Variety.count', -1) do
      delete master_variety_url(@master_variety)
    end

    assert_redirected_to master_varieties_url
  end
end
