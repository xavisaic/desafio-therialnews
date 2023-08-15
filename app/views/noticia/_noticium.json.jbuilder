json.extract! noticium, :id, :title, :content, :user_id, :created_at, :updated_at
json.url noticium_url(noticium, format: :json)
