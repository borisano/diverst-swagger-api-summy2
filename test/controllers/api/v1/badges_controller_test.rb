require 'test_helper'

class Api::V1::BadgesControllerTest < ActionController::TestCase
  setup do
    @api_v1_badge = api_v1_badges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_badges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_badge" do
    assert_difference('Api::V1::Badge.count') do
      post :create, api_v1_badge: {  }
    end

    assert_redirected_to api_v1_badge_path(assigns(:api_v1_badge))
  end

  test "should show api_v1_badge" do
    get :show, id: @api_v1_badge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_badge
    assert_response :success
  end

  test "should update api_v1_badge" do
    patch :update, id: @api_v1_badge, api_v1_badge: {  }
    assert_redirected_to api_v1_badge_path(assigns(:api_v1_badge))
  end

  test "should destroy api_v1_badge" do
    assert_difference('Api::V1::Badge.count', -1) do
      delete :destroy, id: @api_v1_badge
    end

    assert_redirected_to api_v1_badges_path
  end
end
