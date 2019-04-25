require 'test_helper'

class Api::V1::QuestionsControllerTest < ActionController::TestCase
  setup do
    @api_v1_question = api_v1_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_question" do
    assert_difference('Api::V1::Question.count') do
      post :create, api_v1_question: {  }
    end

    assert_redirected_to api_v1_question_path(assigns(:api_v1_question))
  end

  test "should show api_v1_question" do
    get :show, id: @api_v1_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_question
    assert_response :success
  end

  test "should update api_v1_question" do
    patch :update, id: @api_v1_question, api_v1_question: {  }
    assert_redirected_to api_v1_question_path(assigns(:api_v1_question))
  end

  test "should destroy api_v1_question" do
    assert_difference('Api::V1::Question.count', -1) do
      delete :destroy, id: @api_v1_question
    end

    assert_redirected_to api_v1_questions_path
  end
end
