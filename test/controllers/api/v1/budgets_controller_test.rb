require 'test_helper'

class Api::V1::BudgetsControllerTest < ActionController::TestCase
  setup do
    @api_v1_budget = api_v1_budgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_budgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_budget" do
    assert_difference('Api::V1::Budget.count') do
      post :create, api_v1_budget: {  }
    end

    assert_redirected_to api_v1_budget_path(assigns(:api_v1_budget))
  end

  test "should show api_v1_budget" do
    get :show, id: @api_v1_budget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_budget
    assert_response :success
  end

  test "should update api_v1_budget" do
    patch :update, id: @api_v1_budget, api_v1_budget: {  }
    assert_redirected_to api_v1_budget_path(assigns(:api_v1_budget))
  end

  test "should destroy api_v1_budget" do
    assert_difference('Api::V1::Budget.count', -1) do
      delete :destroy, id: @api_v1_budget
    end

    assert_redirected_to api_v1_budgets_path
  end
end
