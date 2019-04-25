require 'test_helper'

class Api::V1::GroupMessageCommentsControllerTest < ActionController::TestCase
  setup do
    @api_v1_group_message_comment = api_v1_group_message_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_group_message_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_group_message_comment" do
    assert_difference('Api::V1::GroupMessageComment.count') do
      post :create, api_v1_group_message_comment: {  }
    end

    assert_redirected_to api_v1_group_message_comment_path(assigns(:api_v1_group_message_comment))
  end

  test "should show api_v1_group_message_comment" do
    get :show, id: @api_v1_group_message_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_group_message_comment
    assert_response :success
  end

  test "should update api_v1_group_message_comment" do
    patch :update, id: @api_v1_group_message_comment, api_v1_group_message_comment: {  }
    assert_redirected_to api_v1_group_message_comment_path(assigns(:api_v1_group_message_comment))
  end

  test "should destroy api_v1_group_message_comment" do
    assert_difference('Api::V1::GroupMessageComment.count', -1) do
      delete :destroy, id: @api_v1_group_message_comment
    end

    assert_redirected_to api_v1_group_message_comments_path
  end
end
