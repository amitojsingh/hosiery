require 'test_helper'

class Master::TypenumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_typenumber = master_typenumbers(:one)
  end

  test "should get index" do
    get master_typenumbers_url
    assert_response :success
  end

  test "should get new" do
    get new_master_typenumber_url
    assert_response :success
  end

  test "should create master_typenumber" do
    assert_difference('Master::Typenumber.count') do
      post master_typenumbers_url, params: { master_typenumber: { end_limit: @master_typenumber.end_limit, start_limit: @master_typenumber.start_limit, suit_type: @master_typenumber.suit_type } }
    end

    assert_redirected_to master_typenumber_url(Master::Typenumber.last)
  end

  test "should show master_typenumber" do
    get master_typenumber_url(@master_typenumber)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_typenumber_url(@master_typenumber)
    assert_response :success
  end

  test "should update master_typenumber" do
    patch master_typenumber_url(@master_typenumber), params: { master_typenumber: { end_limit: @master_typenumber.end_limit, start_limit: @master_typenumber.start_limit, suit_type: @master_typenumber.suit_type } }
    assert_redirected_to master_typenumber_url(@master_typenumber)
  end

  test "should destroy master_typenumber" do
    assert_difference('Master::Typenumber.count', -1) do
      delete master_typenumber_url(@master_typenumber)
    end

    assert_redirected_to master_typenumbers_url
  end
end
