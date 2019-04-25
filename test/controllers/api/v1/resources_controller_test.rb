require 'test_helper'

class Api::V1::ResourcesControllerTest < ActionController::TestCase
  setup do
    @api_v1_resource = api_v1_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_resource" do
    assert_difference('Api::V1::Resource.count') do
      post :create, api_v1_resource: {  }
    end

    assert_redirected_to api_v1_resource_path(assigns(:api_v1_resource))
  end

  test "should show api_v1_resource" do
    get :show, id: @api_v1_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_resource
    assert_response :success
  end

  test "should update api_v1_resource" do
    patch :update, id: @api_v1_resource, api_v1_resource: {  }
    assert_redirected_to api_v1_resource_path(assigns(:api_v1_resource))
  end

  test "should destroy api_v1_resource" do
    assert_difference('Api::V1::Resource.count', -1) do
      delete :destroy, id: @api_v1_resource
    end

    assert_redirected_to api_v1_resources_path
  end
end
