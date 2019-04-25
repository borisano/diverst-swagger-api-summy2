require 'test_helper'

class Api::V1::EmailsControllerTest < ActionController::TestCase
  setup do
    @api_v1_email = api_v1_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_email" do
    assert_difference('Api::V1::Email.count') do
      post :create, api_v1_email: {  }
    end

    assert_redirected_to api_v1_email_path(assigns(:api_v1_email))
  end

  test "should show api_v1_email" do
    get :show, id: @api_v1_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_email
    assert_response :success
  end

  test "should update api_v1_email" do
    patch :update, id: @api_v1_email, api_v1_email: {  }
    assert_redirected_to api_v1_email_path(assigns(:api_v1_email))
  end

  test "should destroy api_v1_email" do
    assert_difference('Api::V1::Email.count', -1) do
      delete :destroy, id: @api_v1_email
    end

    assert_redirected_to api_v1_emails_path
  end
end
