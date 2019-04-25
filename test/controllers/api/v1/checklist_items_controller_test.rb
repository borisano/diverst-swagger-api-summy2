require 'test_helper'

class Api::V1::ChecklistItemsControllerTest < ActionController::TestCase
  setup do
    @api_v1_checklist_item = api_v1_checklist_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_checklist_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_checklist_item" do
    assert_difference('Api::V1::ChecklistItem.count') do
      post :create, api_v1_checklist_item: {  }
    end

    assert_redirected_to api_v1_checklist_item_path(assigns(:api_v1_checklist_item))
  end

  test "should show api_v1_checklist_item" do
    get :show, id: @api_v1_checklist_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_checklist_item
    assert_response :success
  end

  test "should update api_v1_checklist_item" do
    patch :update, id: @api_v1_checklist_item, api_v1_checklist_item: {  }
    assert_redirected_to api_v1_checklist_item_path(assigns(:api_v1_checklist_item))
  end

  test "should destroy api_v1_checklist_item" do
    assert_difference('Api::V1::ChecklistItem.count', -1) do
      delete :destroy, id: @api_v1_checklist_item
    end

    assert_redirected_to api_v1_checklist_items_path
  end
end
