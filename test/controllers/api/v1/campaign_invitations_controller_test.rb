require 'test_helper'

class Api::V1::CampaignInvitationsControllerTest < ActionController::TestCase
  setup do
    @api_v1_campaign_invitation = api_v1_campaign_invitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_campaign_invitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_campaign_invitation" do
    assert_difference('Api::V1::CampaignInvitation.count') do
      post :create, api_v1_campaign_invitation: {  }
    end

    assert_redirected_to api_v1_campaign_invitation_path(assigns(:api_v1_campaign_invitation))
  end

  test "should show api_v1_campaign_invitation" do
    get :show, id: @api_v1_campaign_invitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_campaign_invitation
    assert_response :success
  end

  test "should update api_v1_campaign_invitation" do
    patch :update, id: @api_v1_campaign_invitation, api_v1_campaign_invitation: {  }
    assert_redirected_to api_v1_campaign_invitation_path(assigns(:api_v1_campaign_invitation))
  end

  test "should destroy api_v1_campaign_invitation" do
    assert_difference('Api::V1::CampaignInvitation.count', -1) do
      delete :destroy, id: @api_v1_campaign_invitation
    end

    assert_redirected_to api_v1_campaign_invitations_path
  end
end
