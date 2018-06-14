json.extract! user, :id, :comments, :doctors, :created_at, :updated_at
json.url user_url(user, format: :json)
