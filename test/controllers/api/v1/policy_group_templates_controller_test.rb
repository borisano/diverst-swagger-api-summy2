require 'test_helper'

class Api::V1::PolicyGroupTemplatesControllerTest < ActionController::TestCase
  setup do
    @api_v1_policy_group_template = api_v1_policy_group_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_policy_group_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_policy_group_template" do
    assert_difference('Api::V1::PolicyGroupTemplate.count') do
      post :create, api_v1_policy_group_template: {  }
    end

    assert_redirected_to api_v1_policy_group_template_path(assigns(:api_v1_policy_group_template))
  end

  test "should show api_v1_policy_group_template" do
    get :show, id: @api_v1_policy_group_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_policy_group_template
    assert_response :success
  end

  test "should update api_v1_policy_group_template" do
    patch :update, id: @api_v1_policy_group_template, api_v1_policy_group_template: {  }
    assert_redirected_to api_v1_policy_group_template_path(assigns(:api_v1_policy_group_template))
  end

  test "should destroy api_v1_policy_group_template" do
    assert_difference('Api::V1::PolicyGroupTemplate.count', -1) do
      delete :destroy, id: @api_v1_policy_group_template
    end

    assert_redirected_to api_v1_policy_group_templates_path
  end
end
