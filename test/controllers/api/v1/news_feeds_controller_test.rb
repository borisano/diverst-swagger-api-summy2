require 'test_helper'

class Api::V1::NewsFeedsControllerTest < ActionController::TestCase
  setup do
    @api_v1_news_feed = api_v1_news_feeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_news_feeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_news_feed" do
    assert_difference('Api::V1::NewsFeed.count') do
      post :create, api_v1_news_feed: {  }
    end

    assert_redirected_to api_v1_news_feed_path(assigns(:api_v1_news_feed))
  end

  test "should show api_v1_news_feed" do
    get :show, id: @api_v1_news_feed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_news_feed
    assert_response :success
  end

  test "should update api_v1_news_feed" do
    patch :update, id: @api_v1_news_feed, api_v1_news_feed: {  }
    assert_redirected_to api_v1_news_feed_path(assigns(:api_v1_news_feed))
  end

  test "should destroy api_v1_news_feed" do
    assert_difference('Api::V1::NewsFeed.count', -1) do
      delete :destroy, id: @api_v1_news_feed
    end

    assert_redirected_to api_v1_news_feeds_path
  end
end
