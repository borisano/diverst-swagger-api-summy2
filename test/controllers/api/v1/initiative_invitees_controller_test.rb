require 'test_helper'

class Api::V1::InitiativeInviteesControllerTest < ActionController::TestCase
  setup do
    @api_v1_initiative_invitee = api_v1_initiative_invitees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_initiative_invitees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_initiative_invitee" do
    assert_difference('Api::V1::InitiativeInvitee.count') do
      post :create, api_v1_initiative_invitee: {  }
    end

    assert_redirected_to api_v1_initiative_invitee_path(assigns(:api_v1_initiative_invitee))
  end

  test "should show api_v1_initiative_invitee" do
    get :show, id: @api_v1_initiative_invitee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_initiative_invitee
    assert_response :success
  end

  test "should update api_v1_initiative_invitee" do
    patch :update, id: @api_v1_initiative_invitee, api_v1_initiative_invitee: {  }
    assert_redirected_to api_v1_initiative_invitee_path(assigns(:api_v1_initiative_invitee))
  end

  test "should destroy api_v1_initiative_invitee" do
    assert_difference('Api::V1::InitiativeInvitee.count', -1) do
      delete :destroy, id: @api_v1_initiative_invitee
    end

    assert_redirected_to api_v1_initiative_invitees_path
  end
end
