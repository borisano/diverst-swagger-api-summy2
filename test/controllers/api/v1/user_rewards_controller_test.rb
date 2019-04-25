require 'test_helper'

class Api::V1::UserRewardsControllerTest < ActionController::TestCase
  setup do
    @api_v1_user_reward = api_v1_user_rewards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_user_rewards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_user_reward" do
    assert_difference('Api::V1::UserReward.count') do
      post :create, api_v1_user_reward: {  }
    end

    assert_redirected_to api_v1_user_reward_path(assigns(:api_v1_user_reward))
  end

  test "should show api_v1_user_reward" do
    get :show, id: @api_v1_user_reward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_user_reward
    assert_response :success
  end

  test "should update api_v1_user_reward" do
    patch :update, id: @api_v1_user_reward, api_v1_user_reward: {  }
    assert_redirected_to api_v1_user_reward_path(assigns(:api_v1_user_reward))
  end

  test "should destroy api_v1_user_reward" do
    assert_difference('Api::V1::UserReward.count', -1) do
      delete :destroy, id: @api_v1_user_reward
    end

    assert_redirected_to api_v1_user_rewards_path
  end
end
