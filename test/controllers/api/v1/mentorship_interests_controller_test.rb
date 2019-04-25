require 'test_helper'

class Api::V1::MentorshipInterestsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentorship_interest = api_v1_mentorship_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorship_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentorship_interest" do
    assert_difference('Api::V1::MentorshipInterest.count') do
      post :create, api_v1_mentorship_interest: {  }
    end

    assert_redirected_to api_v1_mentorship_interest_path(assigns(:api_v1_mentorship_interest))
  end

  test "should show api_v1_mentorship_interest" do
    get :show, id: @api_v1_mentorship_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentorship_interest
    assert_response :success
  end

  test "should update api_v1_mentorship_interest" do
    patch :update, id: @api_v1_mentorship_interest, api_v1_mentorship_interest: {  }
    assert_redirected_to api_v1_mentorship_interest_path(assigns(:api_v1_mentorship_interest))
  end

  test "should destroy api_v1_mentorship_interest" do
    assert_difference('Api::V1::MentorshipInterest.count', -1) do
      delete :destroy, id: @api_v1_mentorship_interest
    end

    assert_redirected_to api_v1_mentorship_interests_path
  end
end
