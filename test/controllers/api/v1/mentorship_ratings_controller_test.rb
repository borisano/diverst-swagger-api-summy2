require 'test_helper'

class Api::V1::MentorshipRatingsControllerTest < ActionController::TestCase
  setup do
    @api_v1_mentorship_rating = api_v1_mentorship_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_mentorship_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_mentorship_rating" do
    assert_difference('Api::V1::MentorshipRating.count') do
      post :create, api_v1_mentorship_rating: {  }
    end

    assert_redirected_to api_v1_mentorship_rating_path(assigns(:api_v1_mentorship_rating))
  end

  test "should show api_v1_mentorship_rating" do
    get :show, id: @api_v1_mentorship_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_mentorship_rating
    assert_response :success
  end

  test "should update api_v1_mentorship_rating" do
    patch :update, id: @api_v1_mentorship_rating, api_v1_mentorship_rating: {  }
    assert_redirected_to api_v1_mentorship_rating_path(assigns(:api_v1_mentorship_rating))
  end

  test "should destroy api_v1_mentorship_rating" do
    assert_difference('Api::V1::MentorshipRating.count', -1) do
      delete :destroy, id: @api_v1_mentorship_rating
    end

    assert_redirected_to api_v1_mentorship_ratings_path
  end
end
