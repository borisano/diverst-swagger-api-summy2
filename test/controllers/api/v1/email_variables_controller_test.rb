require 'test_helper'

class Api::V1::EmailVariablesControllerTest < ActionController::TestCase
  setup do
    @api_v1_email_variable = api_v1_email_variables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_email_variables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_email_variable" do
    assert_difference('Api::V1::EmailVariable.count') do
      post :create, api_v1_email_variable: {  }
    end

    assert_redirected_to api_v1_email_variable_path(assigns(:api_v1_email_variable))
  end

  test "should show api_v1_email_variable" do
    get :show, id: @api_v1_email_variable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_email_variable
    assert_response :success
  end

  test "should update api_v1_email_variable" do
    patch :update, id: @api_v1_email_variable, api_v1_email_variable: {  }
    assert_redirected_to api_v1_email_variable_path(assigns(:api_v1_email_variable))
  end

  test "should destroy api_v1_email_variable" do
    assert_difference('Api::V1::EmailVariable.count', -1) do
      delete :destroy, id: @api_v1_email_variable
    end

    assert_redirected_to api_v1_email_variables_path
  end
end
