require 'test_helper'

class Api::V1::FrequencyPeriodsControllerTest < ActionController::TestCase
  setup do
    @api_v1_frequency_period = api_v1_frequency_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_frequency_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_frequency_period" do
    assert_difference('Api::V1::FrequencyPeriod.count') do
      post :create, api_v1_frequency_period: {  }
    end

    assert_redirected_to api_v1_frequency_period_path(assigns(:api_v1_frequency_period))
  end

  test "should show api_v1_frequency_period" do
    get :show, id: @api_v1_frequency_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_frequency_period
    assert_response :success
  end

  test "should update api_v1_frequency_period" do
    patch :update, id: @api_v1_frequency_period, api_v1_frequency_period: {  }
    assert_redirected_to api_v1_frequency_period_path(assigns(:api_v1_frequency_period))
  end

  test "should destroy api_v1_frequency_period" do
    assert_difference('Api::V1::FrequencyPeriod.count', -1) do
      delete :destroy, id: @api_v1_frequency_period
    end

    assert_redirected_to api_v1_frequency_periods_path
  end
end
