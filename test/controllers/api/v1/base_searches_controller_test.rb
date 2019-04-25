require 'test_helper'

class Api::V1::BaseSearchesControllerTest < ActionController::TestCase
  setup do
    @api_v1_base_search = api_v1_base_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_base_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_base_search" do
    assert_difference('Api::V1::BaseSearch.count') do
      post :create, api_v1_base_search: {  }
    end

    assert_redirected_to api_v1_base_search_path(assigns(:api_v1_base_search))
  end

  test "should show api_v1_base_search" do
    get :show, id: @api_v1_base_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_base_search
    assert_response :success
  end

  test "should update api_v1_base_search" do
    patch :update, id: @api_v1_base_search, api_v1_base_search: {  }
    assert_redirected_to api_v1_base_search_path(assigns(:api_v1_base_search))
  end

  test "should destroy api_v1_base_search" do
    assert_difference('Api::V1::BaseSearch.count', -1) do
      delete :destroy, id: @api_v1_base_search
    end

    assert_redirected_to api_v1_base_searches_path
  end
end
