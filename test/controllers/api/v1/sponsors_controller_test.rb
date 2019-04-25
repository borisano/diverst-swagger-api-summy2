require 'test_helper'

class Api::V1::SponsorsControllerTest < ActionController::TestCase
  setup do
    @api_v1_sponsor = api_v1_sponsors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_sponsor" do
    assert_difference('Api::V1::Sponsor.count') do
      post :create, api_v1_sponsor: {  }
    end

    assert_redirected_to api_v1_sponsor_path(assigns(:api_v1_sponsor))
  end

  test "should show api_v1_sponsor" do
    get :show, id: @api_v1_sponsor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_sponsor
    assert_response :success
  end

  test "should update api_v1_sponsor" do
    patch :update, id: @api_v1_sponsor, api_v1_sponsor: {  }
    assert_redirected_to api_v1_sponsor_path(assigns(:api_v1_sponsor))
  end

  test "should destroy api_v1_sponsor" do
    assert_difference('Api::V1::Sponsor.count', -1) do
      delete :destroy, id: @api_v1_sponsor
    end

    assert_redirected_to api_v1_sponsors_path
  end
end
