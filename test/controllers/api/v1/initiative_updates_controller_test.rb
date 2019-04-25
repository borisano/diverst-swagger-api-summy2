require 'test_helper'

class Api::V1::InitiativeUpdatesControllerTest < ActionController::TestCase
  setup do
    @api_v1_initiative_update = api_v1_initiative_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_initiative_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_initiative_update" do
    assert_difference('Api::V1::InitiativeUpdate.count') do
      post :create, api_v1_initiative_update: {  }
    end

    assert_redirected_to api_v1_initiative_update_path(assigns(:api_v1_initiative_update))
  end

  test "should show api_v1_initiative_update" do
    get :show, id: @api_v1_initiative_update
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_initiative_update
    assert_response :success
  end

  test "should update api_v1_initiative_update" do
    patch :update, id: @api_v1_initiative_update, api_v1_initiative_update: {  }
    assert_redirected_to api_v1_initiative_update_path(assigns(:api_v1_initiative_update))
  end

  test "should destroy api_v1_initiative_update" do
    assert_difference('Api::V1::InitiativeUpdate.count', -1) do
      delete :destroy, id: @api_v1_initiative_update
    end

    assert_redirected_to api_v1_initiative_updates_path
  end
end
