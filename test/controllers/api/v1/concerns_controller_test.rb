require 'test_helper'

class Api::V1::ConcernsControllerTest < ActionController::TestCase
  setup do
    @api_v1_concern = api_v1_concerns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_concerns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_concern" do
    assert_difference('Api::V1::Concern.count') do
      post :create, api_v1_concern: {  }
    end

    assert_redirected_to api_v1_concern_path(assigns(:api_v1_concern))
  end

  test "should show api_v1_concern" do
    get :show, id: @api_v1_concern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_concern
    assert_response :success
  end

  test "should update api_v1_concern" do
    patch :update, id: @api_v1_concern, api_v1_concern: {  }
    assert_redirected_to api_v1_concern_path(assigns(:api_v1_concern))
  end

  test "should destroy api_v1_concern" do
    assert_difference('Api::V1::Concern.count', -1) do
      delete :destroy, id: @api_v1_concern
    end

    assert_redirected_to api_v1_concerns_path
  end
end
