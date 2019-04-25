require 'test_helper'

class Api::V1::UserRolesControllerTest < ActionController::TestCase
  setup do
    @api_v1_user_role = api_v1_user_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_user_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_user_role" do
    assert_difference('Api::V1::UserRole.count') do
      post :create, api_v1_user_role: {  }
    end

    assert_redirected_to api_v1_user_role_path(assigns(:api_v1_user_role))
  end

  test "should show api_v1_user_role" do
    get :show, id: @api_v1_user_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_user_role
    assert_response :success
  end

  test "should update api_v1_user_role" do
    patch :update, id: @api_v1_user_role, api_v1_user_role: {  }
    assert_redirected_to api_v1_user_role_path(assigns(:api_v1_user_role))
  end

  test "should destroy api_v1_user_role" do
    assert_difference('Api::V1::UserRole.count', -1) do
      delete :destroy, id: @api_v1_user_role
    end

    assert_redirected_to api_v1_user_roles_path
  end
end
