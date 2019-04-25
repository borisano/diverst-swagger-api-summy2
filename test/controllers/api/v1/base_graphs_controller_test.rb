require 'test_helper'

class Api::V1::BaseGraphsControllerTest < ActionController::TestCase
  setup do
    @api_v1_base_graph = api_v1_base_graphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_base_graphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_base_graph" do
    assert_difference('Api::V1::BaseGraph.count') do
      post :create, api_v1_base_graph: {  }
    end

    assert_redirected_to api_v1_base_graph_path(assigns(:api_v1_base_graph))
  end

  test "should show api_v1_base_graph" do
    get :show, id: @api_v1_base_graph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_base_graph
    assert_response :success
  end

  test "should update api_v1_base_graph" do
    patch :update, id: @api_v1_base_graph, api_v1_base_graph: {  }
    assert_redirected_to api_v1_base_graph_path(assigns(:api_v1_base_graph))
  end

  test "should destroy api_v1_base_graph" do
    assert_difference('Api::V1::BaseGraph.count', -1) do
      delete :destroy, id: @api_v1_base_graph
    end

    assert_redirected_to api_v1_base_graphs_path
  end
end
