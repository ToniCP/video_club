json.extract! second_comment, :id, :user_id, :product_id, :body, :created_at, :updated_at
json.url second_comment_url(second_comment, format: :json)
