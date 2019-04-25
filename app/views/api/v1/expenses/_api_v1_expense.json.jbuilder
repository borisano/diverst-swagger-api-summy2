json.extract! api_v1_expense, :id, :created_at, :updated_at
json.url api_v1_expense_url(api_v1_expense, format: :json)
