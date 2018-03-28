require 'test_helper'

class SizemastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sizemaster = sizemasters(:one)
  end

  test "should get index" do
    get sizemasters_url
    assert_response :success
  end

  test "should get new" do
    get new_sizemaster_url
    assert_response :success
  end

  test "should create sizemaster" do
    assert_difference('Sizemaster.count') do
      post sizemasters_url, params: { sizemaster: { size: @sizemaster.size } }
    end

    assert_redirected_to sizemaster_url(Sizemaster.last)
  end

  test "should show sizemaster" do
    get sizemaster_url(@sizemaster)
    assert_response :success
  end

  test "should get edit" do
    get edit_sizemaster_url(@sizemaster)
    assert_response :success
  end

  test "should update sizemaster" do
    patch sizemaster_url(@sizemaster), params: { sizemaster: { size: @sizemaster.size } }
    assert_redirected_to sizemaster_url(@sizemaster)
  end

  test "should destroy sizemaster" do
    assert_difference('Sizemaster.count', -1) do
      delete sizemaster_url(@sizemaster)
    end

    assert_redirected_to sizemasters_url
  end
end
