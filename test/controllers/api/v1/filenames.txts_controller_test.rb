require 'test_helper'

class Api::V1::Filenames.txtsControllerTest < ActionController::TestCase
  setup do
    @api_v1_filenames.txt = api_v1_filenames.txts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_filenames.txts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_filenames.txt" do
    assert_difference('Api::V1::Filenames.txt.count') do
      post :create, api_v1_filenames.txt: {  }
    end

    assert_redirected_to api_v1_filenames.txt_path(assigns(:api_v1_filenames.txt))
  end

  test "should show api_v1_filenames.txt" do
    get :show, id: @api_v1_filenames.txt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_filenames.txt
    assert_response :success
  end

  test "should update api_v1_filenames.txt" do
    patch :update, id: @api_v1_filenames.txt, api_v1_filenames.txt: {  }
    assert_redirected_to api_v1_filenames.txt_path(assigns(:api_v1_filenames.txt))
  end

  test "should destroy api_v1_filenames.txt" do
    assert_difference('Api::V1::Filenames.txt.count', -1) do
      delete :destroy, id: @api_v1_filenames.txt
    end

    assert_redirected_to api_v1_filenames.txts_path
  end
end
