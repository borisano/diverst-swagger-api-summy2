require 'test_helper'

class Api::V1::ClockworkDatabaseEventsControllerTest < ActionController::TestCase
  setup do
    @api_v1_clockwork_database_event = api_v1_clockwork_database_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_clockwork_database_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_clockwork_database_event" do
    assert_difference('Api::V1::ClockworkDatabaseEvent.count') do
      post :create, api_v1_clockwork_database_event: {  }
    end

    assert_redirected_to api_v1_clockwork_database_event_path(assigns(:api_v1_clockwork_database_event))
  end

  test "should show api_v1_clockwork_database_event" do
    get :show, id: @api_v1_clockwork_database_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_clockwork_database_event
    assert_response :success
  end

  test "should update api_v1_clockwork_database_event" do
    patch :update, id: @api_v1_clockwork_database_event, api_v1_clockwork_database_event: {  }
    assert_redirected_to api_v1_clockwork_database_event_path(assigns(:api_v1_clockwork_database_event))
  end

  test "should destroy api_v1_clockwork_database_event" do
    assert_difference('Api::V1::ClockworkDatabaseEvent.count', -1) do
      delete :destroy, id: @api_v1_clockwork_database_event
    end

    assert_redirected_to api_v1_clockwork_database_events_path
  end
end
