require 'test_helper'

class Api::V1::PollsControllerTest < ActionController::TestCase
  setup do
    @api_v1_poll = api_v1_polls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_polls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_poll" do
    assert_difference('Api::V1::Poll.count') do
      post :create, api_v1_poll: {  }
    end

    assert_redirected_to api_v1_poll_path(assigns(:api_v1_poll))
  end

  test "should show api_v1_poll" do
    get :show, id: @api_v1_poll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_poll
    assert_response :success
  end

  test "should update api_v1_poll" do
    patch :update, id: @api_v1_poll, api_v1_poll: {  }
    assert_redirected_to api_v1_poll_path(assigns(:api_v1_poll))
  end

  test "should destroy api_v1_poll" do
    assert_difference('Api::V1::Poll.count', -1) do
      delete :destroy, id: @api_v1_poll
    end

    assert_redirected_to api_v1_polls_path
  end
end
