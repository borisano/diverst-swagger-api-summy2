require 'test_helper'

class Api::V1::CustomTextsControllerTest < ActionController::TestCase
  setup do
    @api_v1_custom_text = api_v1_custom_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_custom_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_custom_text" do
    assert_difference('Api::V1::CustomText.count') do
      post :create, api_v1_custom_text: {  }
    end

    assert_redirected_to api_v1_custom_text_path(assigns(:api_v1_custom_text))
  end

  test "should show api_v1_custom_text" do
    get :show, id: @api_v1_custom_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_custom_text
    assert_response :success
  end

  test "should update api_v1_custom_text" do
    patch :update, id: @api_v1_custom_text, api_v1_custom_text: {  }
    assert_redirected_to api_v1_custom_text_path(assigns(:api_v1_custom_text))
  end

  test "should destroy api_v1_custom_text" do
    assert_difference('Api::V1::CustomText.count', -1) do
      delete :destroy, id: @api_v1_custom_text
    end

    assert_redirected_to api_v1_custom_texts_path
  end
end
