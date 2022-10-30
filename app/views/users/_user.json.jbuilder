json.extract! user, :id, :email, :crypted_password, :salt, :name, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
