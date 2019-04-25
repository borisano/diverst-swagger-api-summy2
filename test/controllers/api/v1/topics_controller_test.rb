require 'test_helper'

class Api::V1::TopicsControllerTest < ActionController::TestCase
  setup do
    @api_v1_topic = api_v1_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_topic" do
    assert_difference('Api::V1::Topic.count') do
      post :create, api_v1_topic: {  }
    end

    assert_redirected_to api_v1_topic_path(assigns(:api_v1_topic))
  end

  test "should show api_v1_topic" do
    get :show, id: @api_v1_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_topic
    assert_response :success
  end

  test "should update api_v1_topic" do
    patch :update, id: @api_v1_topic, api_v1_topic: {  }
    assert_redirected_to api_v1_topic_path(assigns(:api_v1_topic))
  end

  test "should destroy api_v1_topic" do
    assert_difference('Api::V1::Topic.count', -1) do
      delete :destroy, id: @api_v1_topic
    end

    assert_redirected_to api_v1_topics_path
  end
end
