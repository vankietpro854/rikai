json.extract! report, :id, :title, :user_id, :content, :created_at, :updated_at
json.url report_url(report, format: :json)
