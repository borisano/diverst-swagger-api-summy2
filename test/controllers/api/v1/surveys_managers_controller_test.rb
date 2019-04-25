require 'test_helper'

class Api::V1::SurveysManagersControllerTest < ActionController::TestCase
  setup do
    @api_v1_surveys_manager = api_v1_surveys_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_surveys_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_surveys_manager" do
    assert_difference('Api::V1::SurveysManager.count') do
      post :create, api_v1_surveys_manager: {  }
    end

    assert_redirected_to api_v1_surveys_manager_path(assigns(:api_v1_surveys_manager))
  end

  test "should show api_v1_surveys_manager" do
    get :show, id: @api_v1_surveys_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_surveys_manager
    assert_response :success
  end

  test "should update api_v1_surveys_manager" do
    patch :update, id: @api_v1_surveys_manager, api_v1_surveys_manager: {  }
    assert_redirected_to api_v1_surveys_manager_path(assigns(:api_v1_surveys_manager))
  end

  test "should destroy api_v1_surveys_manager" do
    assert_difference('Api::V1::SurveysManager.count', -1) do
      delete :destroy, id: @api_v1_surveys_manager
    end

    assert_redirected_to api_v1_surveys_managers_path
  end
end
