require 'test_helper'

class Api::V1::AnswersControllerTest < ActionController::TestCase
  setup do
    @api_v1_answer = api_v1_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_answer" do
    assert_difference('Api::V1::Answer.count') do
      post :create, api_v1_answer: {  }
    end

    assert_redirected_to api_v1_answer_path(assigns(:api_v1_answer))
  end

  test "should show api_v1_answer" do
    get :show, id: @api_v1_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_answer
    assert_response :success
  end

  test "should update api_v1_answer" do
    patch :update, id: @api_v1_answer, api_v1_answer: {  }
    assert_redirected_to api_v1_answer_path(assigns(:api_v1_answer))
  end

  test "should destroy api_v1_answer" do
    assert_difference('Api::V1::Answer.count', -1) do
      delete :destroy, id: @api_v1_answer
    end

    assert_redirected_to api_v1_answers_path
  end
end
