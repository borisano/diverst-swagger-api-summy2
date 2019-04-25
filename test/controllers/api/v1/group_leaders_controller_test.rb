require 'test_helper'

class Api::V1::GroupLeadersControllerTest < ActionController::TestCase
  setup do
    @api_v1_group_leader = api_v1_group_leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_group_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_group_leader" do
    assert_difference('Api::V1::GroupLeader.count') do
      post :create, api_v1_group_leader: {  }
    end

    assert_redirected_to api_v1_group_leader_path(assigns(:api_v1_group_leader))
  end

  test "should show api_v1_group_leader" do
    get :show, id: @api_v1_group_leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_group_leader
    assert_response :success
  end

  test "should update api_v1_group_leader" do
    patch :update, id: @api_v1_group_leader, api_v1_group_leader: {  }
    assert_redirected_to api_v1_group_leader_path(assigns(:api_v1_group_leader))
  end

  test "should destroy api_v1_group_leader" do
    assert_difference('Api::V1::GroupLeader.count', -1) do
      delete :destroy, id: @api_v1_group_leader
    end

    assert_redirected_to api_v1_group_leaders_path
  end
end
