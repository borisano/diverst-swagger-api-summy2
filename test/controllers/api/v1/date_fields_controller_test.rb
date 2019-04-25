require 'test_helper'

class Api::V1::DateFieldsControllerTest < ActionController::TestCase
  setup do
    @api_v1_date_field = api_v1_date_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_date_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_date_field" do
    assert_difference('Api::V1::DateField.count') do
      post :create, api_v1_date_field: {  }
    end

    assert_redirected_to api_v1_date_field_path(assigns(:api_v1_date_field))
  end

  test "should show api_v1_date_field" do
    get :show, id: @api_v1_date_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_date_field
    assert_response :success
  end

  test "should update api_v1_date_field" do
    patch :update, id: @api_v1_date_field, api_v1_date_field: {  }
    assert_redirected_to api_v1_date_field_path(assigns(:api_v1_date_field))
  end

  test "should destroy api_v1_date_field" do
    assert_difference('Api::V1::DateField.count', -1) do
      delete :destroy, id: @api_v1_date_field
    end

    assert_redirected_to api_v1_date_fields_path
  end
end
