require 'test_helper'

class Api::V1::FieldDataControllerTest < ActionController::TestCase
  setup do
    @api_v1_field_datum = api_v1_field_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_field_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_field_datum" do
    assert_difference('Api::V1::FieldDatum.count') do
      post :create, api_v1_field_datum: {  }
    end

    assert_redirected_to api_v1_field_datum_path(assigns(:api_v1_field_datum))
  end

  test "should show api_v1_field_datum" do
    get :show, id: @api_v1_field_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_field_datum
    assert_response :success
  end

  test "should update api_v1_field_datum" do
    patch :update, id: @api_v1_field_datum, api_v1_field_datum: {  }
    assert_redirected_to api_v1_field_datum_path(assigns(:api_v1_field_datum))
  end

  test "should destroy api_v1_field_datum" do
    assert_difference('Api::V1::FieldDatum.count', -1) do
      delete :destroy, id: @api_v1_field_datum
    end

    assert_redirected_to api_v1_field_data_path
  end
end
