require 'test_helper'

class Api::V1::PillarsControllerTest < ActionController::TestCase
  setup do
    @api_v1_pillar = api_v1_pillars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_pillars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_pillar" do
    assert_difference('Api::V1::Pillar.count') do
      post :create, api_v1_pillar: {  }
    end

    assert_redirected_to api_v1_pillar_path(assigns(:api_v1_pillar))
  end

  test "should show api_v1_pillar" do
    get :show, id: @api_v1_pillar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_pillar
    assert_response :success
  end

  test "should update api_v1_pillar" do
    patch :update, id: @api_v1_pillar, api_v1_pillar: {  }
    assert_redirected_to api_v1_pillar_path(assigns(:api_v1_pillar))
  end

  test "should destroy api_v1_pillar" do
    assert_difference('Api::V1::Pillar.count', -1) do
      delete :destroy, id: @api_v1_pillar
    end

    assert_redirected_to api_v1_pillars_path
  end
end
