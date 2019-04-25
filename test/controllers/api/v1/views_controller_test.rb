require 'test_helper'

class Api::V1::ViewsControllerTest < ActionController::TestCase
  setup do
    @api_v1_view = api_v1_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_view" do
    assert_difference('Api::V1::View.count') do
      post :create, api_v1_view: {  }
    end

    assert_redirected_to api_v1_view_path(assigns(:api_v1_view))
  end

  test "should show api_v1_view" do
    get :show, id: @api_v1_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_view
    assert_response :success
  end

  test "should update api_v1_view" do
    patch :update, id: @api_v1_view, api_v1_view: {  }
    assert_redirected_to api_v1_view_path(assigns(:api_v1_view))
  end

  test "should destroy api_v1_view" do
    assert_difference('Api::V1::View.count', -1) do
      delete :destroy, id: @api_v1_view
    end

    assert_redirected_to api_v1_views_path
  end
end
