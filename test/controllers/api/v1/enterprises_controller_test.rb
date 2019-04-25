require 'test_helper'

class Api::V1::EnterprisesControllerTest < ActionController::TestCase
  setup do
    @api_v1_enterprise = api_v1_enterprises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_enterprises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_enterprise" do
    assert_difference('Api::V1::Enterprise.count') do
      post :create, api_v1_enterprise: {  }
    end

    assert_redirected_to api_v1_enterprise_path(assigns(:api_v1_enterprise))
  end

  test "should show api_v1_enterprise" do
    get :show, id: @api_v1_enterprise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_enterprise
    assert_response :success
  end

  test "should update api_v1_enterprise" do
    patch :update, id: @api_v1_enterprise, api_v1_enterprise: {  }
    assert_redirected_to api_v1_enterprise_path(assigns(:api_v1_enterprise))
  end

  test "should destroy api_v1_enterprise" do
    assert_difference('Api::V1::Enterprise.count', -1) do
      delete :destroy, id: @api_v1_enterprise
    end

    assert_redirected_to api_v1_enterprises_path
  end
end
