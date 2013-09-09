json.array!(@profiles) do |profile|
  json.extract! profile, :user_id, :first_name, :last_name, :plz, :age, :adress, :which_games, :bio, :which_groups
  json.url profile_url(profile, format: :json)
end
