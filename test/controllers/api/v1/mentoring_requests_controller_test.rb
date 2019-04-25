require 'test_helper'

class Api::V1::MentoringRequestsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentoring_request = api_v1_mentoring_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentoring_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentoring_request" do
    assert_difference('Api::V1::MentoringRequest.count') do
      post :create, api_v1_mentoring_request: {  }
    end

    assert_redirected_to api_v1_mentoring_request_path(assigns(:api_v1_mentoring_request))
  end

  test "should show api_v1_mentoring_request" do
    get :show, id: @api_v1_mentoring_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentoring_request
    assert_response :success
  end

  test "should update api_v1_mentoring_request" do
    patch :update, id: @api_v1_mentoring_request, api_v1_mentoring_request: {  }
    assert_redirected_to api_v1_mentoring_request_path(assigns(:api_v1_mentoring_request))
  end

  test "should destroy api_v1_mentoring_request" do
    assert_difference('Api::V1::MentoringRequest.count', -1) do
      delete :destroy, id: @api_v1_mentoring_request
    end

    assert_redirected_to api_v1_mentoring_requests_path
  end
end
