require 'test_helper'

class Api::V1::MentoringInterestsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentoring_interest = api_v1_mentoring_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentoring_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentoring_interest" do
    assert_difference('Api::V1::MentoringInterest.count') do
      post :create, api_v1_mentoring_interest: {  }
    end

    assert_redirected_to api_v1_mentoring_interest_path(assigns(:api_v1_mentoring_interest))
  end

  test "should show api_v1_mentoring_interest" do
    get :show, id: @api_v1_mentoring_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentoring_interest
    assert_response :success
  end

  test "should update api_v1_mentoring_interest" do
    patch :update, id: @api_v1_mentoring_interest, api_v1_mentoring_interest: {  }
    assert_redirected_to api_v1_mentoring_interest_path(assigns(:api_v1_mentoring_interest))
  end

  test "should destroy api_v1_mentoring_interest" do
    assert_difference('Api::V1::MentoringInterest.count', -1) do
      delete :destroy, id: @api_v1_mentoring_interest
    end

    assert_redirected_to api_v1_mentoring_interests_path
  end
end
