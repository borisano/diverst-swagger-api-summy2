require 'test_helper'

class Api::V1::MentorshipSessionsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentorship_session = api_v1_mentorship_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorship_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentorship_session" do
    assert_difference('Api::V1::MentorshipSession.count') do
      post :create, api_v1_mentorship_session: {  }
    end

    assert_redirected_to api_v1_mentorship_session_path(assigns(:api_v1_mentorship_session))
  end

  test "should show api_v1_mentorship_session" do
    get :show, id: @api_v1_mentorship_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentorship_session
    assert_response :success
  end

  test "should update api_v1_mentorship_session" do
    patch :update, id: @api_v1_mentorship_session, api_v1_mentorship_session: {  }
    assert_redirected_to api_v1_mentorship_session_path(assigns(:api_v1_mentorship_session))
  end

  test "should destroy api_v1_mentorship_session" do
    assert_difference('Api::V1::MentorshipSession.count', -1) do
      delete :destroy, id: @api_v1_mentorship_session
    end

    assert_redirected_to api_v1_mentorship_sessions_path
  end
end
