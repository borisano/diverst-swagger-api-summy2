require 'test_helper'

class Api::V1::PollResponsesControllerTest < ActionController::TestCase
  setup do
    @api_v1_poll_response = api_v1_poll_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_poll_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_poll_response" do
    assert_difference('Api::V1::PollResponse.count') do
      post :create, api_v1_poll_response: {  }
    end

    assert_redirected_to api_v1_poll_response_path(assigns(:api_v1_poll_response))
  end

  test "should show api_v1_poll_response" do
    get :show, id: @api_v1_poll_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_poll_response
    assert_response :success
  end

  test "should update api_v1_poll_response" do
    patch :update, id: @api_v1_poll_response, api_v1_poll_response: {  }
    assert_redirected_to api_v1_poll_response_path(assigns(:api_v1_poll_response))
  end

  test "should destroy api_v1_poll_response" do
    assert_difference('Api::V1::PollResponse.count', -1) do
      delete :destroy, id: @api_v1_poll_response
    end

    assert_redirected_to api_v1_poll_responses_path
  end
end
