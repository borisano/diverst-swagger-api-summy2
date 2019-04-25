require 'test_helper'

class Api::V1::MentorshipAvailabilitiesControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentorship_availability = api_v1_mentorship_availabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorship_availabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentorship_availability" do
    assert_difference('Api::V1::MentorshipAvailability.count') do
      post :create, api_v1_mentorship_availability: {  }
    end

    assert_redirected_to api_v1_mentorship_availability_path(assigns(:api_v1_mentorship_availability))
  end

  test "should show api_v1_mentorship_availability" do
    get :show, id: @api_v1_mentorship_availability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentorship_availability
    assert_response :success
  end

  test "should update api_v1_mentorship_availability" do
    patch :update, id: @api_v1_mentorship_availability, api_v1_mentorship_availability: {  }
    assert_redirected_to api_v1_mentorship_availability_path(assigns(:api_v1_mentorship_availability))
  end

  test "should destroy api_v1_mentorship_availability" do
    assert_difference('Api::V1::MentorshipAvailability.count', -1) do
      delete :destroy, id: @api_v1_mentorship_availability
    end

    assert_redirected_to api_v1_mentorship_availabilities_path
  end
end
