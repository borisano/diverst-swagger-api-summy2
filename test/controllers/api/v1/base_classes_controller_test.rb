require 'test_helper'

class Api::V1::BaseClassesControllerTest < ActionController::TestCase
  setup do
    @api_v1_base_class = api_v1_base_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_base_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_base_class" do
    assert_difference('Api::V1::BaseClass.count') do
      post :create, api_v1_base_class: {  }
    end

    assert_redirected_to api_v1_base_class_path(assigns(:api_v1_base_class))
  end

  test "should show api_v1_base_class" do
    get :show, id: @api_v1_base_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_base_class
    assert_response :success
  end

  test "should update api_v1_base_class" do
    patch :update, id: @api_v1_base_class, api_v1_base_class: {  }
    assert_redirected_to api_v1_base_class_path(assigns(:api_v1_base_class))
  end

  test "should destroy api_v1_base_class" do
    assert_difference('Api::V1::BaseClass.count', -1) do
      delete :destroy, id: @api_v1_base_class
    end

    assert_redirected_to api_v1_base_classes_path
  end
end
