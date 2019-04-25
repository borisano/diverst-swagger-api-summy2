require 'test_helper'

class Api::V1::LikesControllerTest < ActionController::TestCase
  setup do
    @api_v1_like = api_v1_likes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_likes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_like" do
    assert_difference('Api::V1::Like.count') do
      post :create, api_v1_like: {  }
    end

    assert_redirected_to api_v1_like_path(assigns(:api_v1_like))
  end

  test "should show api_v1_like" do
    get :show, id: @api_v1_like
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_like
    assert_response :success
  end

  test "should update api_v1_like" do
    patch :update, id: @api_v1_like, api_v1_like: {  }
    assert_redirected_to api_v1_like_path(assigns(:api_v1_like))
  end

  test "should destroy api_v1_like" do
    assert_difference('Api::V1::Like.count', -1) do
      delete :destroy, id: @api_v1_like
    end

    assert_redirected_to api_v1_likes_path
  end
end
