require 'test_helper'

class Api::V1::BaseElasticsearchesControllerTest < ActionController::TestCase
  setup do
    @api_v1_base_elasticsearch = api_v1_base_elasticsearches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_base_elasticsearches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_base_elasticsearch" do
    assert_difference('Api::V1::BaseElasticsearch.count') do
      post :create, api_v1_base_elasticsearch: {  }
    end

    assert_redirected_to api_v1_base_elasticsearch_path(assigns(:api_v1_base_elasticsearch))
  end

  test "should show api_v1_base_elasticsearch" do
    get :show, id: @api_v1_base_elasticsearch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_base_elasticsearch
    assert_response :success
  end

  test "should update api_v1_base_elasticsearch" do
    patch :update, id: @api_v1_base_elasticsearch, api_v1_base_elasticsearch: {  }
    assert_redirected_to api_v1_base_elasticsearch_path(assigns(:api_v1_base_elasticsearch))
  end

  test "should destroy api_v1_base_elasticsearch" do
    assert_difference('Api::V1::BaseElasticsearch.count', -1) do
      delete :destroy, id: @api_v1_base_elasticsearch
    end

    assert_redirected_to api_v1_base_elasticsearches_path
  end
end
