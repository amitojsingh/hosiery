require 'test_helper'

class Master::EmployesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_employe = master_employes(:one)
  end

  test "should get index" do
    get master_employes_url
    assert_response :success
  end

  test "should get new" do
    get new_master_employe_url
    assert_response :success
  end

  test "should create master_employe" do
    assert_difference('Master::Employe.count') do
      post master_employes_url, params: { master_employe: { address: @master_employe.address, mobile: @master_employe.mobile, name: @master_employe.name } }
    end

    assert_redirected_to master_employe_url(Master::Employe.last)
  end

  test "should show master_employe" do
    get master_employe_url(@master_employe)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_employe_url(@master_employe)
    assert_response :success
  end

  test "should update master_employe" do
    patch master_employe_url(@master_employe), params: { master_employe: { address: @master_employe.address, mobile: @master_employe.mobile, name: @master_employe.name } }
    assert_redirected_to master_employe_url(@master_employe)
  end

  test "should destroy master_employe" do
    assert_difference('Master::Employe.count', -1) do
      delete master_employe_url(@master_employe)
    end

    assert_redirected_to master_employes_url
  end
end
