require 'test_helper'

class Api::V1::TagsControllerTest < ActionController::TestCase
  setup do
    @api_v1_tag = api_v1_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_tag" do
    assert_difference('Api::V1::Tag.count') do
      post :create, api_v1_tag: {  }
    end

    assert_redirected_to api_v1_tag_path(assigns(:api_v1_tag))
  end

  test "should show api_v1_tag" do
    get :show, id: @api_v1_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_tag
    assert_response :success
  end

  test "should update api_v1_tag" do
    patch :update, id: @api_v1_tag, api_v1_tag: {  }
    assert_redirected_to api_v1_tag_path(assigns(:api_v1_tag))
  end

  test "should destroy api_v1_tag" do
    assert_difference('Api::V1::Tag.count', -1) do
      delete :destroy, id: @api_v1_tag
    end

    assert_redirected_to api_v1_tags_path
  end
end
