json.extract! api_v1_news_link, :id, :created_at, :updated_at
json.url api_v1_news_link_url(api_v1_news_link, format: :json)
