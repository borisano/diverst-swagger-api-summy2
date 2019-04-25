require 'test_helper'

class Api::V1::SegmentRulesControllerTest < ActionController::TestCase
  setup do
    @api_v1_segment_rule = api_v1_segment_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_segment_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_segment_rule" do
    assert_difference('Api::V1::SegmentRule.count') do
      post :create, api_v1_segment_rule: {  }
    end

    assert_redirected_to api_v1_segment_rule_path(assigns(:api_v1_segment_rule))
  end

  test "should show api_v1_segment_rule" do
    get :show, id: @api_v1_segment_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_segment_rule
    assert_response :success
  end

  test "should update api_v1_segment_rule" do
    patch :update, id: @api_v1_segment_rule, api_v1_segment_rule: {  }
    assert_redirected_to api_v1_segment_rule_path(assigns(:api_v1_segment_rule))
  end

  test "should destroy api_v1_segment_rule" do
    assert_difference('Api::V1::SegmentRule.count', -1) do
      delete :destroy, id: @api_v1_segment_rule
    end

    assert_redirected_to api_v1_segment_rules_path
  end
end
