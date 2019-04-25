require 'test_helper'

class Api::V1::BudgetItemsControllerTest < ActionController::TestCase
  setup do
    @api_v1_budget_item = api_v1_budget_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_budget_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_budget_item" do
    assert_difference('Api::V1::BudgetItem.count') do
      post :create, api_v1_budget_item: {  }
    end

    assert_redirected_to api_v1_budget_item_path(assigns(:api_v1_budget_item))
  end

  test "should show api_v1_budget_item" do
    get :show, id: @api_v1_budget_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_budget_item
    assert_response :success
  end

  test "should update api_v1_budget_item" do
    patch :update, id: @api_v1_budget_item, api_v1_budget_item: {  }
    assert_redirected_to api_v1_budget_item_path(assigns(:api_v1_budget_item))
  end

  test "should destroy api_v1_budget_item" do
    assert_difference('Api::V1::BudgetItem.count', -1) do
      delete :destroy, id: @api_v1_budget_item
    end

    assert_redirected_to api_v1_budget_items_path
  end
end
