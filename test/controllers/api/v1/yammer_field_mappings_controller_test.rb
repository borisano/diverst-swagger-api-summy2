require 'test_helper'

class Api::V1::YammerFieldMappingsControllerTest < ActionController::TestCase
  setup do
    @api_v1_yammer_field_mapping = api_v1_yammer_field_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_yammer_field_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_yammer_field_mapping" do
    assert_difference('Api::V1::YammerFieldMapping.count') do
      post :create, api_v1_yammer_field_mapping: {  }
    end

    assert_redirected_to api_v1_yammer_field_mapping_path(assigns(:api_v1_yammer_field_mapping))
  end

  test "should show api_v1_yammer_field_mapping" do
    get :show, id: @api_v1_yammer_field_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_yammer_field_mapping
    assert_response :success
  end

  test "should update api_v1_yammer_field_mapping" do
    patch :update, id: @api_v1_yammer_field_mapping, api_v1_yammer_field_mapping: {  }
    assert_redirected_to api_v1_yammer_field_mapping_path(assigns(:api_v1_yammer_field_mapping))
  end

  test "should destroy api_v1_yammer_field_mapping" do
    assert_difference('Api::V1::YammerFieldMapping.count', -1) do
      delete :destroy, id: @api_v1_yammer_field_mapping
    end

    assert_redirected_to api_v1_yammer_field_mappings_path
  end
end
