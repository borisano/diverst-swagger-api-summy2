require 'test_helper'

class Api::V1::SegmentationsControllerTest < ActionController::TestCase
  setup do
    @api_v1_segmentation = api_v1_segmentations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_segmentations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_segmentation" do
    assert_difference('Api::V1::Segmentation.count') do
      post :create, api_v1_segmentation: {  }
    end

    assert_redirected_to api_v1_segmentation_path(assigns(:api_v1_segmentation))
  end

  test "should show api_v1_segmentation" do
    get :show, id: @api_v1_segmentation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_segmentation
    assert_response :success
  end

  test "should update api_v1_segmentation" do
    patch :update, id: @api_v1_segmentation, api_v1_segmentation: {  }
    assert_redirected_to api_v1_segmentation_path(assigns(:api_v1_segmentation))
  end

  test "should destroy api_v1_segmentation" do
    assert_difference('Api::V1::Segmentation.count', -1) do
      delete :destroy, id: @api_v1_segmentation
    end

    assert_redirected_to api_v1_segmentations_path
  end
end
