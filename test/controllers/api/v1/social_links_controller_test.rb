require 'test_helper'

class Api::V1::SocialLinksControllerTest < ActionController::TestCase
  setup do
    @api_v1_social_link = api_v1_social_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_social_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_social_link" do
    assert_difference('Api::V1::SocialLink.count') do
      post :create, api_v1_social_link: {  }
    end

    assert_redirected_to api_v1_social_link_path(assigns(:api_v1_social_link))
  end

  test "should show api_v1_social_link" do
    get :show, id: @api_v1_social_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_social_link
    assert_response :success
  end

  test "should update api_v1_social_link" do
    patch :update, id: @api_v1_social_link, api_v1_social_link: {  }
    assert_redirected_to api_v1_social_link_path(assigns(:api_v1_social_link))
  end

  test "should destroy api_v1_social_link" do
    assert_difference('Api::V1::SocialLink.count', -1) do
      delete :destroy, id: @api_v1_social_link
    end

    assert_redirected_to api_v1_social_links_path
  end
end
