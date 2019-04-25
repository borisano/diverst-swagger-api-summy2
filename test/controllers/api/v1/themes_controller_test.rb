require 'test_helper'

class Api::V1::ThemesControllerTest < ActionController::TestCase
  setup do
    @api_v1_theme = api_v1_themes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_themes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_theme" do
    assert_difference('Api::V1::Theme.count') do
      post :create, api_v1_theme: {  }
    end

    assert_redirected_to api_v1_theme_path(assigns(:api_v1_theme))
  end

  test "should show api_v1_theme" do
    get :show, id: @api_v1_theme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_theme
    assert_response :success
  end

  test "should update api_v1_theme" do
    patch :update, id: @api_v1_theme, api_v1_theme: {  }
    assert_redirected_to api_v1_theme_path(assigns(:api_v1_theme))
  end

  test "should destroy api_v1_theme" do
    assert_difference('Api::V1::Theme.count', -1) do
      delete :destroy, id: @api_v1_theme
    end

    assert_redirected_to api_v1_themes_path
  end
end
