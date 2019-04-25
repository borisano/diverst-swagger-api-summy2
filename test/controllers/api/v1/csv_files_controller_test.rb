require 'test_helper'

class Api::V1::CsvFilesControllerTest < ActionController::TestCase
  setup do
    @api_v1_csv_file = api_v1_csv_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_csv_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_csv_file" do
    assert_difference('Api::V1::CsvFile.count') do
      post :create, api_v1_csv_file: {  }
    end

    assert_redirected_to api_v1_csv_file_path(assigns(:api_v1_csv_file))
  end

  test "should show api_v1_csv_file" do
    get :show, id: @api_v1_csv_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_csv_file
    assert_response :success
  end

  test "should update api_v1_csv_file" do
    patch :update, id: @api_v1_csv_file, api_v1_csv_file: {  }
    assert_redirected_to api_v1_csv_file_path(assigns(:api_v1_csv_file))
  end

  test "should destroy api_v1_csv_file" do
    assert_difference('Api::V1::CsvFile.count', -1) do
      delete :destroy, id: @api_v1_csv_file
    end

    assert_redirected_to api_v1_csv_files_path
  end
end
