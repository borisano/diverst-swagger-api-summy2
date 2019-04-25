require 'test_helper'

class Api::V1::TopicFeedbacksControllerTest < ActionController::TestCase
  setup do
    @api_v1_topic_feedback = api_v1_topic_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_topic_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_topic_feedback" do
    assert_difference('Api::V1::TopicFeedback.count') do
      post :create, api_v1_topic_feedback: {  }
    end

    assert_redirected_to api_v1_topic_feedback_path(assigns(:api_v1_topic_feedback))
  end

  test "should show api_v1_topic_feedback" do
    get :show, id: @api_v1_topic_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_topic_feedback
    assert_response :success
  end

  test "should update api_v1_topic_feedback" do
    patch :update, id: @api_v1_topic_feedback, api_v1_topic_feedback: {  }
    assert_redirected_to api_v1_topic_feedback_path(assigns(:api_v1_topic_feedback))
  end

  test "should destroy api_v1_topic_feedback" do
    assert_difference('Api::V1::TopicFeedback.count', -1) do
      delete :destroy, id: @api_v1_topic_feedback
    end

    assert_redirected_to api_v1_topic_feedbacks_path
  end
end
