json.array!(@users) do |user|
  json.extract! user, :email, :nickname, :registration_date
  json.url user_url(user, format: :json)
end
