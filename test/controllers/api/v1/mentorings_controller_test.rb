require 'test_helper'

class Api::V1::MentoringsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentoring = api_v1_mentorings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentoring" do
    assert_difference('Api::V1::Mentoring.count') do
      post :create, api_v1_mentoring: {  }
    end

    assert_redirected_to api_v1_mentoring_path(assigns(:api_v1_mentoring))
  end

  test "should show api_v1_mentoring" do
    get :show, id: @api_v1_mentoring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentoring
    assert_response :success
  end

  test "should update api_v1_mentoring" do
    patch :update, id: @api_v1_mentoring, api_v1_mentoring: {  }
    assert_redirected_to api_v1_mentoring_path(assigns(:api_v1_mentoring))
  end

  test "should destroy api_v1_mentoring" do
    assert_difference('Api::V1::Mentoring.count', -1) do
      delete :destroy, id: @api_v1_mentoring
    end

    assert_redirected_to api_v1_mentorings_path
  end
end
