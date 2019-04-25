require 'test_helper'

class Api::V1::CampaignsControllerTest < ActionController::TestCase
  setup do
    @api_v1_campaign = api_v1_campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_campaign" do
    assert_difference('Api::V1::Campaign.count') do
      post :create, api_v1_campaign: {  }
    end

    assert_redirected_to api_v1_campaign_path(assigns(:api_v1_campaign))
  end

  test "should show api_v1_campaign" do
    get :show, id: @api_v1_campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_campaign
    assert_response :success
  end

  test "should update api_v1_campaign" do
    patch :update, id: @api_v1_campaign, api_v1_campaign: {  }
    assert_redirected_to api_v1_campaign_path(assigns(:api_v1_campaign))
  end

  test "should destroy api_v1_campaign" do
    assert_difference('Api::V1::Campaign.count', -1) do
      delete :destroy, id: @api_v1_campaign
    end

    assert_redirected_to api_v1_campaigns_path
  end
end
