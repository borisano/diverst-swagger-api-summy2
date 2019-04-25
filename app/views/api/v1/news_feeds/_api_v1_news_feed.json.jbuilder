json.extract! api_v1_news_feed, :id, :created_at, :updated_at
json.url api_v1_news_feed_url(api_v1_news_feed, format: :json)
