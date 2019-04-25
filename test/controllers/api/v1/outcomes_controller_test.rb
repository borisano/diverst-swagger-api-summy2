require 'test_helper'

class Api::V1::OutcomesControllerTest < ActionController::TestCase
  setup do
    @api_v1_outcome = api_v1_outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_outcome" do
    assert_difference('Api::V1::Outcome.count') do
      post :create, api_v1_outcome: {  }
    end

    assert_redirected_to api_v1_outcome_path(assigns(:api_v1_outcome))
  end

  test "should show api_v1_outcome" do
    get :show, id: @api_v1_outcome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_outcome
    assert_response :success
  end

  test "should update api_v1_outcome" do
    patch :update, id: @api_v1_outcome, api_v1_outcome: {  }
    assert_redirected_to api_v1_outcome_path(assigns(:api_v1_outcome))
  end

  test "should destroy api_v1_outcome" do
    assert_difference('Api::V1::Outcome.count', -1) do
      delete :destroy, id: @api_v1_outcome
    end

    assert_redirected_to api_v1_outcomes_path
  end
end
