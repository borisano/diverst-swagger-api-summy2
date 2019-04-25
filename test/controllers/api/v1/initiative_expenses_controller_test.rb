require 'test_helper'

class Api::V1::InitiativeExpensesControllerTest < ActionController::TestCase
  setup do
    @api_v1_initiative_expense = api_v1_initiative_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_initiative_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_initiative_expense" do
    assert_difference('Api::V1::InitiativeExpense.count') do
      post :create, api_v1_initiative_expense: {  }
    end

    assert_redirected_to api_v1_initiative_expense_path(assigns(:api_v1_initiative_expense))
  end

  test "should show api_v1_initiative_expense" do
    get :show, id: @api_v1_initiative_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_initiative_expense
    assert_response :success
  end

  test "should update api_v1_initiative_expense" do
    patch :update, id: @api_v1_initiative_expense, api_v1_initiative_expense: {  }
    assert_redirected_to api_v1_initiative_expense_path(assigns(:api_v1_initiative_expense))
  end

  test "should destroy api_v1_initiative_expense" do
    assert_difference('Api::V1::InitiativeExpense.count', -1) do
      delete :destroy, id: @api_v1_initiative_expense
    end

    assert_redirected_to api_v1_initiative_expenses_path
  end
end
