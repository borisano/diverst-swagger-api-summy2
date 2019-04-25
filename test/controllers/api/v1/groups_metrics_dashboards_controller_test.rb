require 'test_helper'

class Api::V1::GroupsMetricsDashboardsControllerTest < ActionController::TestCase
  setup do
    @api_v1_groups_metrics_dashboard = api_v1_groups_metrics_dashboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_groups_metrics_dashboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_groups_metrics_dashboard" do
    assert_difference('Api::V1::GroupsMetricsDashboard.count') do
      post :create, api_v1_groups_metrics_dashboard: {  }
    end

    assert_redirected_to api_v1_groups_metrics_dashboard_path(assigns(:api_v1_groups_metrics_dashboard))
  end

  test "should show api_v1_groups_metrics_dashboard" do
    get :show, id: @api_v1_groups_metrics_dashboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_groups_metrics_dashboard
    assert_response :success
  end

  test "should update api_v1_groups_metrics_dashboard" do
    patch :update, id: @api_v1_groups_metrics_dashboard, api_v1_groups_metrics_dashboard: {  }
    assert_redirected_to api_v1_groups_metrics_dashboard_path(assigns(:api_v1_groups_metrics_dashboard))
  end

  test "should destroy api_v1_groups_metrics_dashboard" do
    assert_difference('Api::V1::GroupsMetricsDashboard.count', -1) do
      delete :destroy, id: @api_v1_groups_metrics_dashboard
    end

    assert_redirected_to api_v1_groups_metrics_dashboards_path
  end
end
