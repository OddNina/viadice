json.array!(@groups) do |group|
  json.extract! group, :title, :gamemaster, :gamer, :description, :campagne, :gameType
  json.url group_url(group, format: :json)
end
