require 'test_helper'

class Api::V1::GraphsControllerTest < ActionController::TestCase
  setup do
    @api_v1_graph = api_v1_graphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_graphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_graph" do
    assert_difference('Api::V1::Graph.count') do
      post :create, api_v1_graph: {  }
    end

    assert_redirected_to api_v1_graph_path(assigns(:api_v1_graph))
  end

  test "should show api_v1_graph" do
    get :show, id: @api_v1_graph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_graph
    assert_response :success
  end

  test "should update api_v1_graph" do
    patch :update, id: @api_v1_graph, api_v1_graph: {  }
    assert_redirected_to api_v1_graph_path(assigns(:api_v1_graph))
  end

  test "should destroy api_v1_graph" do
    assert_difference('Api::V1::Graph.count', -1) do
      delete :destroy, id: @api_v1_graph
    end

    assert_redirected_to api_v1_graphs_path
  end
end
