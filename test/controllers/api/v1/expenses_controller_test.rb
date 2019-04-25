require 'test_helper'

class Api::V1::ExpensesControllerTest < ActionController::TestCase
  setup do
    @api_v1_expense = api_v1_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_expense" do
    assert_difference('Api::V1::Expense.count') do
      post :create, api_v1_expense: {  }
    end

    assert_redirected_to api_v1_expense_path(assigns(:api_v1_expense))
  end

  test "should show api_v1_expense" do
    get :show, id: @api_v1_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_expense
    assert_response :success
  end

  test "should update api_v1_expense" do
    patch :update, id: @api_v1_expense, api_v1_expense: {  }
    assert_redirected_to api_v1_expense_path(assigns(:api_v1_expense))
  end

  test "should destroy api_v1_expense" do
    assert_difference('Api::V1::Expense.count', -1) do
      delete :destroy, id: @api_v1_expense
    end

    assert_redirected_to api_v1_expenses_path
  end
end
