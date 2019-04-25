require 'test_helper'

class Api::V1::FolderSharesControllerTest < ActionController::TestCase
  setup do
    @api_v1_folder_share = api_v1_folder_shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_folder_shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_folder_share" do
    assert_difference('Api::V1::FolderShare.count') do
      post :create, api_v1_folder_share: {  }
    end

    assert_redirected_to api_v1_folder_share_path(assigns(:api_v1_folder_share))
  end

  test "should show api_v1_folder_share" do
    get :show, id: @api_v1_folder_share
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_folder_share
    assert_response :success
  end

  test "should update api_v1_folder_share" do
    patch :update, id: @api_v1_folder_share, api_v1_folder_share: {  }
    assert_redirected_to api_v1_folder_share_path(assigns(:api_v1_folder_share))
  end

  test "should destroy api_v1_folder_share" do
    assert_difference('Api::V1::FolderShare.count', -1) do
      delete :destroy, id: @api_v1_folder_share
    end

    assert_redirected_to api_v1_folder_shares_path
  end
end
