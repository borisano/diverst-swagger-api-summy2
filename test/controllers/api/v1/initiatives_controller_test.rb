require 'test_helper'

class Api::V1::InitiativesControllerTest < ActionController::TestCase
  setup do
    @api_v1_initiative = api_v1_initiatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_initiatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_initiative" do
    assert_difference('Api::V1::Initiative.count') do
      post :create, api_v1_initiative: {  }
    end

    assert_redirected_to api_v1_initiative_path(assigns(:api_v1_initiative))
  end

  test "should show api_v1_initiative" do
    get :show, id: @api_v1_initiative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_initiative
    assert_response :success
  end

  test "should update api_v1_initiative" do
    patch :update, id: @api_v1_initiative, api_v1_initiative: {  }
    assert_redirected_to api_v1_initiative_path(assigns(:api_v1_initiative))
  end

  test "should destroy api_v1_initiative" do
    assert_difference('Api::V1::Initiative.count', -1) do
      delete :destroy, id: @api_v1_initiative
    end

    assert_redirected_to api_v1_initiatives_path
  end
end
