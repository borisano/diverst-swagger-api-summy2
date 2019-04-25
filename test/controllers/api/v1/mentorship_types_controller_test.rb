require 'test_helper'

class Api::V1::MentorshipTypesControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentorship_type = api_v1_mentorship_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorship_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentorship_type" do
    assert_difference('Api::V1::MentorshipType.count') do
      post :create, api_v1_mentorship_type: {  }
    end

    assert_redirected_to api_v1_mentorship_type_path(assigns(:api_v1_mentorship_type))
  end

  test "should show api_v1_mentorship_type" do
    get :show, id: @api_v1_mentorship_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentorship_type
    assert_response :success
  end

  test "should update api_v1_mentorship_type" do
    patch :update, id: @api_v1_mentorship_type, api_v1_mentorship_type: {  }
    assert_redirected_to api_v1_mentorship_type_path(assigns(:api_v1_mentorship_type))
  end

  test "should destroy api_v1_mentorship_type" do
    assert_difference('Api::V1::MentorshipType.count', -1) do
      delete :destroy, id: @api_v1_mentorship_type
    end

    assert_redirected_to api_v1_mentorship_types_path
  end
end
