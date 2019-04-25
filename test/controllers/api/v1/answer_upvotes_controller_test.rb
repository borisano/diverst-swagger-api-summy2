require 'test_helper'

class Api::V1::AnswerUpvotesControllerTest < ActionController::TestCase
  setup do
    @api_v1_answer_upvote = api_v1_answer_upvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_answer_upvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_answer_upvote" do
    assert_difference('Api::V1::AnswerUpvote.count') do
      post :create, api_v1_answer_upvote: {  }
    end

    assert_redirected_to api_v1_answer_upvote_path(assigns(:api_v1_answer_upvote))
  end

  test "should show api_v1_answer_upvote" do
    get :show, id: @api_v1_answer_upvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_answer_upvote
    assert_response :success
  end

  test "should update api_v1_answer_upvote" do
    patch :update, id: @api_v1_answer_upvote, api_v1_answer_upvote: {  }
    assert_redirected_to api_v1_answer_upvote_path(assigns(:api_v1_answer_upvote))
  end

  test "should destroy api_v1_answer_upvote" do
    assert_difference('Api::V1::AnswerUpvote.count', -1) do
      delete :destroy, id: @api_v1_answer_upvote
    end

    assert_redirected_to api_v1_answer_upvotes_path
  end
end
