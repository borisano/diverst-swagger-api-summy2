require 'test_helper'

class Api::V1::FoldersControllerTest < ActionController::TestCase
  setup do
    @api_v1_folder = api_v1_folders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_folders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_folder" do
    assert_difference('Api::V1::Folder.count') do
      post :create, api_v1_folder: {  }
    end

    assert_redirected_to api_v1_folder_path(assigns(:api_v1_folder))
  end

  test "should show api_v1_folder" do
    get :show, id: @api_v1_folder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_folder
    assert_response :success
  end

  test "should update api_v1_folder" do
    patch :update, id: @api_v1_folder, api_v1_folder: {  }
    assert_redirected_to api_v1_folder_path(assigns(:api_v1_folder))
  end

  test "should destroy api_v1_folder" do
    assert_difference('Api::V1::Folder.count', -1) do
      delete :destroy, id: @api_v1_folder
    end

    assert_redirected_to api_v1_folders_path
  end
end
