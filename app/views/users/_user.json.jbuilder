json.extract! user, :id, :name, :email, :image, :address, :phone, :date, :created_at, :updated_at
json.url user_url(user, format: :json)
