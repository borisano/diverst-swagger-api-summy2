require 'test_helper'

class Api::V1::RewardActionsControllerTest < ActionController::TestCase
  setup do
    @api_v1_reward_action = api_v1_reward_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_reward_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_reward_action" do
    assert_difference('Api::V1::RewardAction.count') do
      post :create, api_v1_reward_action: {  }
    end

    assert_redirected_to api_v1_reward_action_path(assigns(:api_v1_reward_action))
  end

  test "should show api_v1_reward_action" do
    get :show, id: @api_v1_reward_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_reward_action
    assert_response :success
  end

  test "should update api_v1_reward_action" do
    patch :update, id: @api_v1_reward_action, api_v1_reward_action: {  }
    assert_redirected_to api_v1_reward_action_path(assigns(:api_v1_reward_action))
  end

  test "should destroy api_v1_reward_action" do
    assert_difference('Api::V1::RewardAction.count', -1) do
      delete :destroy, id: @api_v1_reward_action
    end

    assert_redirected_to api_v1_reward_actions_path
  end
end
