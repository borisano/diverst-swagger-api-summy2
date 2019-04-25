require 'test_helper'

class Api::V1::MentoringSessionsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentoring_session = api_v1_mentoring_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentoring_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentoring_session" do
    assert_difference('Api::V1::MentoringSession.count') do
      post :create, api_v1_mentoring_session: {  }
    end

    assert_redirected_to api_v1_mentoring_session_path(assigns(:api_v1_mentoring_session))
  end

  test "should show api_v1_mentoring_session" do
    get :show, id: @api_v1_mentoring_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentoring_session
    assert_response :success
  end

  test "should update api_v1_mentoring_session" do
    patch :update, id: @api_v1_mentoring_session, api_v1_mentoring_session: {  }
    assert_redirected_to api_v1_mentoring_session_path(assigns(:api_v1_mentoring_session))
  end

  test "should destroy api_v1_mentoring_session" do
    assert_difference('Api::V1::MentoringSession.count', -1) do
      delete :destroy, id: @api_v1_mentoring_session
    end

    assert_redirected_to api_v1_mentoring_sessions_path
  end
end
