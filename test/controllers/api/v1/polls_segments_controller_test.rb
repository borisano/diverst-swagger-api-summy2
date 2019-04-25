require 'test_helper'

class Api::V1::PollsSegmentsControllerTest < ActionController::TestCase
  setup do
    @api_v1_polls_segment = api_v1_polls_segments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_polls_segments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_polls_segment" do
    assert_difference('Api::V1::PollsSegment.count') do
      post :create, api_v1_polls_segment: {  }
    end

    assert_redirected_to api_v1_polls_segment_path(assigns(:api_v1_polls_segment))
  end

  test "should show api_v1_polls_segment" do
    get :show, id: @api_v1_polls_segment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_polls_segment
    assert_response :success
  end

  test "should update api_v1_polls_segment" do
    patch :update, id: @api_v1_polls_segment, api_v1_polls_segment: {  }
    assert_redirected_to api_v1_polls_segment_path(assigns(:api_v1_polls_segment))
  end

  test "should destroy api_v1_polls_segment" do
    assert_difference('Api::V1::PollsSegment.count', -1) do
      delete :destroy, id: @api_v1_polls_segment
    end

    assert_redirected_to api_v1_polls_segments_path
  end
end
