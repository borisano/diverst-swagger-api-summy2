require 'test_helper'

class Api::V1::AnswerExpensesControllerTest < ActionController::TestCase
  setup do
    @api_v1_answer_expense = api_v1_answer_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_answer_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_answer_expense" do
    assert_difference('Api::V1::AnswerExpense.count') do
      post :create, api_v1_answer_expense: {  }
    end

    assert_redirected_to api_v1_answer_expense_path(assigns(:api_v1_answer_expense))
  end

  test "should show api_v1_answer_expense" do
    get :show, id: @api_v1_answer_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_answer_expense
    assert_response :success
  end

  test "should update api_v1_answer_expense" do
    patch :update, id: @api_v1_answer_expense, api_v1_answer_expense: {  }
    assert_redirected_to api_v1_answer_expense_path(assigns(:api_v1_answer_expense))
  end

  test "should destroy api_v1_answer_expense" do
    assert_difference('Api::V1::AnswerExpense.count', -1) do
      delete :destroy, id: @api_v1_answer_expense
    end

    assert_redirected_to api_v1_answer_expenses_path
  end
end
