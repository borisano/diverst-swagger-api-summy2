require 'test_helper'

class Api::V1::NewsLinkPhotosControllerTest < ActionController::TestCase
  setup do
    @api_v1_news_link_photo = api_v1_news_link_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_news_link_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_news_link_photo" do
    assert_difference('Api::V1::NewsLinkPhoto.count') do
      post :create, api_v1_news_link_photo: {  }
    end

    assert_redirected_to api_v1_news_link_photo_path(assigns(:api_v1_news_link_photo))
  end

  test "should show api_v1_news_link_photo" do
    get :show, id: @api_v1_news_link_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_news_link_photo
    assert_response :success
  end

  test "should update api_v1_news_link_photo" do
    patch :update, id: @api_v1_news_link_photo, api_v1_news_link_photo: {  }
    assert_redirected_to api_v1_news_link_photo_path(assigns(:api_v1_news_link_photo))
  end

  test "should destroy api_v1_news_link_photo" do
    assert_difference('Api::V1::NewsLinkPhoto.count', -1) do
      delete :destroy, id: @api_v1_news_link_photo
    end

    assert_redirected_to api_v1_news_link_photos_path
  end
end
