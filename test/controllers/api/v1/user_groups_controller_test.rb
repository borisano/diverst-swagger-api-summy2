require 'test_helper'

class Api::V1::UserGroupsControllerTest < ActionController::TestCase
  setup do
    @api_v1_user_group = api_v1_user_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_user_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_user_group" do
    assert_difference('Api::V1::UserGroup.count') do
      post :create, api_v1_user_group: {  }
    end

    assert_redirected_to api_v1_user_group_path(assigns(:api_v1_user_group))
  end

  test "should show api_v1_user_group" do
    get :show, id: @api_v1_user_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_user_group
    assert_response :success
  end

  test "should update api_v1_user_group" do
    patch :update, id: @api_v1_user_group, api_v1_user_group: {  }
    assert_redirected_to api_v1_user_group_path(assigns(:api_v1_user_group))
  end

  test "should destroy api_v1_user_group" do
    assert_difference('Api::V1::UserGroup.count', -1) do
      delete :destroy, id: @api_v1_user_group
    end

    assert_redirected_to api_v1_user_groups_path
  end
end
