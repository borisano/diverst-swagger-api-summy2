require 'test_helper'

class Api::V1::MentoringSessionTopicsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentoring_session_topic = api_v1_mentoring_session_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentoring_session_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentoring_session_topic" do
    assert_difference('Api::V1::MentoringSessionTopic.count') do
      post :create, api_v1_mentoring_session_topic: {  }
    end

    assert_redirected_to api_v1_mentoring_session_topic_path(assigns(:api_v1_mentoring_session_topic))
  end

  test "should show api_v1_mentoring_session_topic" do
    get :show, id: @api_v1_mentoring_session_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentoring_session_topic
    assert_response :success
  end

  test "should update api_v1_mentoring_session_topic" do
    patch :update, id: @api_v1_mentoring_session_topic, api_v1_mentoring_session_topic: {  }
    assert_redirected_to api_v1_mentoring_session_topic_path(assigns(:api_v1_mentoring_session_topic))
  end

  test "should destroy api_v1_mentoring_session_topic" do
    assert_difference('Api::V1::MentoringSessionTopic.count', -1) do
      delete :destroy, id: @api_v1_mentoring_session_topic
    end

    assert_redirected_to api_v1_mentoring_session_topics_path
  end
end
