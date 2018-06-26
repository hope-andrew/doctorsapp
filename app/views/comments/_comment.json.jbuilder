json.extract! comment, :id, :doctor_id, :comment_body, :rating, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
