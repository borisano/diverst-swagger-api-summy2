require 'test_helper'

class Api::V1::ExpenseCategoriesControllerTest < ActionController::TestCase
  setup do
    @api_v1_expense_category = api_v1_expense_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_expense_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_expense_category" do
    assert_difference('Api::V1::ExpenseCategory.count') do
      post :create, api_v1_expense_category: {  }
    end

    assert_redirected_to api_v1_expense_category_path(assigns(:api_v1_expense_category))
  end

  test "should show api_v1_expense_category" do
    get :show, id: @api_v1_expense_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_expense_category
    assert_response :success
  end

  test "should update api_v1_expense_category" do
    patch :update, id: @api_v1_expense_category, api_v1_expense_category: {  }
    assert_redirected_to api_v1_expense_category_path(assigns(:api_v1_expense_category))
  end

  test "should destroy api_v1_expense_category" do
    assert_difference('Api::V1::ExpenseCategory.count', -1) do
      delete :destroy, id: @api_v1_expense_category
    end

    assert_redirected_to api_v1_expense_categories_path
  end
end
